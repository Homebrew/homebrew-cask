class Bee < Cask
  url 'http://neat.io/bee/download.html'
  appcast 'http://neat.io/appcasts/bee-appcast.xml'
  homepage 'http://neat.io/bee/'
  version 'latest'
  sha256 :no_check
  link 'Bee.app'
end
