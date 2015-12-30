cask 'sparkleshare' do
  version '1.5'
  sha256 '5000d3484e864c2ca94fb9e3ed40cdcb5d23664fe5708f351b73b8abe6d34f2a'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/hbons/sparkleshare/downloads/sparkleshare-mac-#{version}.zip"
  name 'SparkleShare'
  homepage 'http://sparkleshare.org/'
  license :gpl

  app 'SparkleShare.app'
end
