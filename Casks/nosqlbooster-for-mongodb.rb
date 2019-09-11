cask 'nosqlbooster-for-mongodb' do
  version '5.1.14'
  sha256 'c6260687f815082acc941ad32a0f7c9cbcf72ddc4c73bbc2b703dece25497595'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
