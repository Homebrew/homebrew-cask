cask 'nosqlbooster-for-mongodb' do
  version '5.2.9'
  sha256 '6387a91f223301b222baa7c26a05dca95a17c8d5ac78574debc44ebd5048534e'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
