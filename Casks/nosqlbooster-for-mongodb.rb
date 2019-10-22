cask 'nosqlbooster-for-mongodb' do
  version '5.2.4'
  sha256 '5e230021a25e6f90cb6405f43c7a7b125df0cbe507fae493fca3adf1caa0be54'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
