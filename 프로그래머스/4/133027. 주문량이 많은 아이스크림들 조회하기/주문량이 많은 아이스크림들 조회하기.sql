-- 코드를 입력하세요
SELECT FIRST_HALF.FLAVOR
FROM FIRST_HALF
JOIN JULY
ON FIRST_HALF.FLAVOR = JULY.FLAVOR
GROUP BY FIRST_HALF.FLAVOR
ORDER BY SUM(FIRST_HALF.TOTAL_ORDER) + SUM(JULY.TOTAL_ORDER) DESC
LIMIT 3;