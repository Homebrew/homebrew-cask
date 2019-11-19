cask 'nosqlbooster-for-mongodb' do
  version '5.2.6'
  sha256 '1af659f91a4846480561b7b3f4acba419adac7bff3c41c69da76f8338cf2b743'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
