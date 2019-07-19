cask 'nosqlbooster-for-mongodb' do
  version '5.1.11'
  sha256 '80e94e0fd6909d9a4728a4d3ecc02ba61f14e7f6606493e73b64c36de053bd5b'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast 'https://nosqlbooster.com/downloads'
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
