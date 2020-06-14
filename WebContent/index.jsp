<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%

	String alumnos[] = {"Pedro","Alfencio","Dorito","Adefecio"};
	pageContext.setAttribute("losAlumnos",alumnos);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>   
	
	
	<c:out value="Lista de alumnos que reprobaron el curso de DBP"></c:out><br/>
	<c:forEach var="tempAlumnos" items="${losAlumnos}">
	${tempAlumnos}<br/>
	</c:forEach>
	<br/>
	<c:set var="primer_puesto" value="Grecia"/>
	<c:out value="${primer_puesto }">Nadie ocupa el primer puesto</c:out>
	<br/>
	<c:if test="${primer_puesto == null}">
		<input type="text" value="Falla del Sistema , no hay puesto">
	</c:if>
	
	
	<c:choose>
		<c:when test="${primer_puesto ==  'Grecia' }">
				<c:out value="La alumna Grecia es el 1er puesto"></c:out><br/>
		</c:when>
		<c:when test="${primer_puesto ==  'Pedro' }">
				<c:out value="El primer puesto es Pedro al parecer"></c:out><br/>
		</c:when>
		<c:otherwise>
			<c:out value="Fatal Error .. autodestrucción en 3 --- 3 ---2 ----2----1---- DEAD"></c:out><br/>
		</c:otherwise>
	
	</c:choose>
	
	

</body>
</html>