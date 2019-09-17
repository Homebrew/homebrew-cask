cask 'nosqlbooster-for-mongodb' do
  version '5.2.0'
  sha256 '13902f919e7a5485e168e86d0523dba44bee7f918c90631c8015358bbb2533d1'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
