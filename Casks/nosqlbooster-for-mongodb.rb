cask 'nosqlbooster-for-mongodb' do
  version '5.1.5'
  sha256 '612ef2ea9097e15213cf8d094d3bd9ac26e3f1557199339abd6b532526053a88'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
