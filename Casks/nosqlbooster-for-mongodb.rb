cask 'nosqlbooster-for-mongodb' do
  version '5.2.3'
  sha256 'b8e32b2218e95a9094282f89f6177f7bf75600614d117162e001e25770115cc9'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
