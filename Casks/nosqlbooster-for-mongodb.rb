cask 'nosqlbooster-for-mongodb' do
  version '5.2.7'
  sha256 '7c1d00e33ad31d0d69ad72fd3420ad0b7a826adc54548590951fe98db47d37e3'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
