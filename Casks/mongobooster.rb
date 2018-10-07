cask 'mongobooster' do
  version '4.1.3'
  sha256 '2f1bd13d2ea93aef79ef3c97037be22d178f2e6c5bf3a4ef94571106cb6c6a05'

  # s3.mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/#{version.major_minor}/mongobooster-#{version}.dmg"
  name 'MongoBooster'
  homepage 'https://nosqlbooster.com/'

  app 'MongoBooster.app'
end
