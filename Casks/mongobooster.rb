cask 'mongobooster' do
  version '4.1.3'
  sha256 '2f1bd13d2ea93aef79ef3c97037be22d178f2e6c5bf3a4ef94571106cb6c6a05'

  url "http://s3.mongobooster.com/download/#{version.major_minor}/mongobooster-#{version}.dmg"
  name 'MongoBooster'
  homepage 'https://mongobooster.com/'

  app 'MongoBooster.app'
end
