cask 'nosqlbooster-for-mongodb' do
  version '5.2.1'
  sha256 '88c037a7b1f60d93435efb66e68df782b39007c7c108c06e3287bfe4fbf60d8f'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
