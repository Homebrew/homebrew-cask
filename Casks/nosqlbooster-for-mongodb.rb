cask 'nosqlbooster-for-mongodb' do
  version '6.0.2'
  sha256 '479139ea54cc9cd16e426f743b742ca26dea9172b1e5b1fd47260f1f892528d5'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
