create database mobile_price_prediction

select * from [dbo].[specifications]



--write a query to find top 10 mobile phone names by price

select top 10 *from (select top 10 * from [dbo].[specifications] order by Price DESC) as top_prices

--Find out the null values from table

select * from [dbo].[specifications] where [Selfi_Cam]  is null

select * from [dbo].[specifications] where [Ratings] is null



--Find out top 10  brand phone got the highest rating

select top 10 * from (select top 10 * from [dbo].[specifications] order by [Ratings] desc) as top_rating


--Perform all the aggregate functions 

select avg(price) as avg_price from [dbo].[specifications]

select min(price) as min_price from [dbo].[specifications]

select max(price) as max_price from [dbo].[specifications]

select count(price) as count_all from [dbo].[specifications]


--Select top 10 brand name sold the most

select top 10 * from(select top 10 Brand_me from [dbo].[specifications] order by [Brand_me] DESC) as top_sold


-- write a query to find top 10 mobile brqnds with their selfie cam quality

select top 10  max([Price]) as price,max([Selfi_Cam]) as max_cam from [dbo].[specifications] 
group by [Brand_me]
order by [Price] desc


