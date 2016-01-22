USE cloudera;

CREATE EXTERNAL TABLE IF NOT EXISTS offers (
	--offer,category,quantity,company,offervalue,brand
	offerid BIGINT,
	category BIGINT,
	quantity INT,
	company BIGINT,
	offervalue INT,
	brand BIGINT
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/cloudera/rec_data/offers'
tblproperties("skip.header.line.count"="1"); 