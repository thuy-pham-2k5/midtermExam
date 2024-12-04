<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.midtermexam.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Management</title>
</head>
<body>
<h2>Order Management</h2>
<%
    List<Order> orders = new ArrayList<>();
    orders.add(new Order(1101, "2024/12/04", "Customer A", "Not delivered"));
    orders.add(new Order(1102, "2024/12/05", "Customer B", "On delivery"));
    orders.add(new Order(1103, "2024/12/06", "Customer C", "Delivered"));
    request.setAttribute("orders", orders);
%>

<c:forEach var="order" items="${orders}">
    <p>Order Code: ${order.code}</p>
    <p>Date Order: ${order.dateOrder}</p>
    <p>Customer: ${order.customer}</p>
    <p>Order Status: ${order.status}</p>
    <br>
</c:forEach>


</body>
</html>

