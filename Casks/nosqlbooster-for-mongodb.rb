cask 'nosqlbooster-for-mongodb' do
  version '5.1.7'
  sha256 'c136369ba3cf9ca76f7546478675014408ca6b184d5ed8f5e4924ad3c5e4e38f'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
