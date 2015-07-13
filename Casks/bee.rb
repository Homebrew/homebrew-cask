cask :v1 => 'bee' do
  version '2.1'
  sha256 '3a3103938959d212ac9eb7c78bf83931d2876384ee13f5ffd3a9b3b2f0da3d58'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://neat.io/appcasts/bee-appcast.xml'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
