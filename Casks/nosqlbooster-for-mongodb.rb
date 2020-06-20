cask 'nosqlbooster-for-mongodb' do
  version '6.0.4'
  sha256 '4375c1477f0036ac0f3e355eb525bc6875854e8291a38009a19a9c4c277ee6a0'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
