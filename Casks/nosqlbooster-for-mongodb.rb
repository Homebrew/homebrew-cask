cask 'nosqlbooster-for-mongodb' do
  version '5.0.3'
  sha256 'a9a033a835912802dbc957e4a13ace31b7e5e8c0f827fd05befb87fc20521e38'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
