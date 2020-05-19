cask 'nosqlbooster-for-mongodb' do
  version '5.2.12'
  sha256 'ad867c38367b9272ab0c95f66d228d02ab81092b272ab5ef6f83b4a1eae15edc'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
