cask 'nosqlbooster-for-mongodb' do
  version '5.1.2'
  sha256 'cff4e6eccaa3346e20cd6d211d157d0c681d3713112ddb1ad917d3ad1a6e3f9d'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
