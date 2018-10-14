cask 'nosqlbooster-for-mongodb' do
  version '4.7.4'
  sha256 '314e877c15a72df19e08ab06e572d534fc0ef05e62fe7c33812931fd9f22a7eb'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
