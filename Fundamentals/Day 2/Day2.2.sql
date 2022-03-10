SHOW databases;
USE dac_2021;

SHOW tables;

DESCRIBE emp;

SELECT empno, ename, job
FROM emp;

select empno, ename, sal * 12	-- mathematical calculation
from emp;

select empno, ename, sal * 12 as AnnualSal -- aliases (using as)
from emp;

select empno Employee_No, ename Employee_Name, sal * 12 as AnnualSal -- aliases (w/o using as)
from emp;

select empno "Employee No.", 		-- if more no. of columns in one table then writing in single line will be much more hectic.
	   ename as "Employee Name", 
       sal * 12 as "Annual Salary" -- aliases (now column names have gap in b/w)
from emp;

select empno, ename, sal, comm, sal+comm as "Total Salary"
from emp;	-- problem: it gives NULL o/p in Total Salary.

-- solution = coalesce() fn. 
select empno, ename, sal, comm, coalesce(comm, 0) as "Total Salary" -- it means replacing the NULL to 0
from emp;
