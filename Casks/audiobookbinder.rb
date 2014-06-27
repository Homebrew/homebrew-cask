class Audiobookbinder < Cask
  version '1.18'
  sha256 'b6b8ad12378710fb73c0db990f6fb471f0bba163ad83c84958992d62c106e588'
  
  url 'http://bluezbox.com/audiobookbinder/AudiobookBinder-1.18.dmg'
  appcast 'http://bluezbox.com/audiobookbinder/appcast.xml'
  homepage 'http://bluezbox.com/audiobookbinder.html'

  link 'AudioBookBinder.app'
end
