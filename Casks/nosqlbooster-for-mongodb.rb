cask 'nosqlbooster-for-mongodb' do
  version '5.2.10'
  sha256 '3860f945574e3004d3ac17e28fe2e0e48dd6fc43152bc10a52fc9e754c5f8240'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
