# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem. I

Create table If Not Exists Sales_19
(
sale_id int, 
product_id int, 
year int, 
quantity int, 
price int
);

Create table If Not Exists Product_19
(
product_id int, 
product_name varchar(10)
);

Truncate table Sales_19;
insert into Sales_19 (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000');
insert into Sales_19 (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000');
insert into Sales_19 (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000');

Truncate table Product_19;
insert into Product_19 (product_id, product_name) values ('100', 'Nokia');
insert into Product_19 (product_id, product_name) values ('200', 'Apple');
insert into Product_19 (product_id, product_name) values ('300', 'Samsung');

/*
Q. Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order.

Input: 
Sales table:
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+ 
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+
Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+
Output: 
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+
Explanation: 
From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.
*/

SELECT * FROM Sales_19;
SELECT * FROM Product_19;

# Query :- 
SELECT p.product_name, s.year, s.price
FROM Sales_19 AS s
LEFT JOIN Product_19 AS p 
ON s.product_id=p.product_id;
