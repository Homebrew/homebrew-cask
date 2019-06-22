cask 'nosqlbooster-for-mongodb' do
  version '5.1.9'
  sha256 '02dc75060a5cf1469955f915d519161160bb7b8df1c7d1aa6347fc2bc725c2d3'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
