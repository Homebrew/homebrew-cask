cask 'nosqlbooster-for-mongodb' do
  version '6.0.1'
  sha256 '829a588223dfcd4c916eff1949b4819e058ee7456e12b38edc96680923b908aa'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
