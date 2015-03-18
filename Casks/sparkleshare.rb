cask :v1 => 'sparkleshare' do
  version '1.4'
  sha256 '571a8e39591883f0af6fb9056db8c1a0835cc0babb73b07050a188165552c038'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/hbons/sparkleshare/downloads/sparkleshare-mac-#{version}.zip"
  name 'SparkleShare'
  homepage 'http://sparkleshare.org/'
  license :gpl

  app 'SparkleShare.app'
end
