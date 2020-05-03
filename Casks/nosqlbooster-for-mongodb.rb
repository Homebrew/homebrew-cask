cask 'nosqlbooster-for-mongodb' do
  version '5.2.11'
  sha256 '2c7030e259dbb00b430811119c0dcc1521d5a9ff7390f4cb40d772592ebda61f'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
