cask 'nosqlbooster-for-mongodb' do
  version '5.1.13'
  sha256 '3c652373520a628759982a22f25f04bcf4633a2485648ba7786d776c4df5fb3b'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
