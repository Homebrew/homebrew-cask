cask 'nosqlbooster-for-mongodb' do
  version '5.1.12'
  sha256 '54864fe02d2e479e1a31fb360bdf23da9fed2fdd780f13d482f7cfc72a38ae2a'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
