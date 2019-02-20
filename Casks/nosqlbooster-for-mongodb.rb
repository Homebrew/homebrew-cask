cask 'nosqlbooster-for-mongodb' do
  version '5.1.4'
  sha256 '95087dd9248ff95c555d2b8271e36e2219195d9fe83e6f7f3ece30036a1d2d88'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
