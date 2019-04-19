cask 'nosqlbooster-for-mongodb' do
  version '5.1.6'
  sha256 '5d7bd62e12ad8f79d2f12dae117a1488a968432355d5dace1333faae39085aba'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
