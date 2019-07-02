cask 'nosqlbooster-for-mongodb' do
  version '5.1.10'
  sha256 'b799562bb218b7b92c2c452a74dd2446f93b151be9697fc47a3ac3e8bab3c347'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
