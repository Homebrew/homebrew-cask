cask 'bee' do
  version '2.2.1'
  sha256 '18b43b184c3d600be528e08d381c42a67cae1bf9d3e090d21a13f1e1be9b70a8'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://neat.io/appcasts/bee-appcast.xml',
          :sha256 => '6914fc3ec81e1cb0eb39ccca2a4e0d8b9a3b213e926b8d3ef5a5a11100347833'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
