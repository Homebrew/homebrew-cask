cask 'nosqlbooster-for-mongodb' do
  version '5.1.8'
  sha256 'd3a6218771a5e0d46cf7332bbf1f9a6539d40f7dd27198509637c4b9d55228a0'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
