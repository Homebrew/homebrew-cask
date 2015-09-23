cask :v1 => 'bee' do
  version '2.2'
  sha256 'bdb31af7cd200a1faf0ba17c152775c108ca3c822931a0c672493a046041e0ca'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://neat.io/appcasts/bee-appcast.xml'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
