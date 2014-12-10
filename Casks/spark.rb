cask :v1 => 'spark' do
  version :latest
  sha256 :no_check

  url 'http://www.shadowlab.org/softwares/Spark/Spark.dmg'
  homepage 'http://www.shadowlab.org/softwares/spark.php'
  license :unknown    # todo: improve this machine-generated value

  app 'Spark.app'

  zap :delete => '~/Library/Application Support/Spark'
end
