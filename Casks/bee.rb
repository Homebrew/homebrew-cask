cask :v1 => 'bee' do
  version '2.2.1'
  sha256 '18b43b184c3d600be528e08d381c42a67cae1bf9d3e090d21a13f1e1be9b70a8'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://neat.io/appcasts/bee-appcast.xml'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
