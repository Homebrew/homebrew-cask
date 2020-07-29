cask 'nosqlbooster-for-mongodb' do
  version '6.0.3'
  sha256 '9088acf80b38cda79b74e38e7b9ba18dd2e94013154661567853faf556ec20d7'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
