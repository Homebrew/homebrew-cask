cask 'spark' do
  version :latest
  sha256 :no_check

  url 'http://www.shadowlab.org/softwares/Spark/Spark.dmg'
  name 'Spark'
  homepage 'http://www.shadowlab.org/softwares/spark.php'
  license :mit

  app 'Spark.app'

  zap delete: '~/Library/Application Support/Spark'
end
