cask :v1 => 'bee' do
  version :latest
  sha256 :no_check

  url 'http://neat.io/bee/download.html'
  appcast 'http://neat.io/appcasts/bee-appcast.xml'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
