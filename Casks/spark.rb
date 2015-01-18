cask :v1 => 'spark' do
  version :latest
  sha256 :no_check

  url 'http://www.shadowlab.org/softwares/Spark/Spark.dmg'
  name 'Spark'
  homepage 'http://www.shadowlab.org/softwares/spark.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spark.app'

  zap :delete => '~/Library/Application Support/Spark'
end
