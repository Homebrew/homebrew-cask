cask 'nosqlbooster-for-mongodb' do
  version '5.2.8'
  sha256 '7d11e34cdbbed1b99e5d88104f886604cdc61dbdbce3fdb162ee0c30d889c548'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
