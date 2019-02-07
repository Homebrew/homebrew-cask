cask 'nosqlbooster-for-mongodb' do
  version '5.1.1'
  sha256 '79442df2ea9725d527a17bc170f7cd3bd21aacbe2208a1532733c5a968942678'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
