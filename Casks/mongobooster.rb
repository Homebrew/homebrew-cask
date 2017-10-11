cask 'mongobooster' do
  version '4.0.2'
  sha256 '3c3e46e363089e6cffebd66be9d2626d1b383c1c22d5bd255c52167cf01be925'

  url "http://s3.mongobooster.com/download/4.0/mongobooster-#{version}.dmg"
  name 'MongoBooster'
  homepage 'https://mongobooster.com/'

  app 'MongoBooster.app'

  uninstall quit: 'MongoBooster'
end
