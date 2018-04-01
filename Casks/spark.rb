cask 'spark' do
  version :latest
  sha256 :no_check

  url 'https://www.shadowlab.org/softwares/Spark/Spark.zip'
  name 'Spark'
  homepage 'https://www.shadowlab.org/softwares/spark.php'

  app 'Spark.app'

  zap trash: '~/Library/Application Support/Spark'
end
