cask 'nosqlbooster-for-mongodb' do
  version '5.2.5'
  sha256 '36202f898bb34f8d83164a622c4679a6ca87c5f1247430c886f91da495eca1fc'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
