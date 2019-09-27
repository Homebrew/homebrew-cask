cask 'nosqlbooster-for-mongodb' do
  version '5.2.2'
  sha256 '486ca4851b13fdccc5b97e7dbc089555951e26ca78c070660d43bf7796cd5305'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
