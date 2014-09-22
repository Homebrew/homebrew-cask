class Audiobookbinder < Cask
  version '2.0'
  sha256 '7f66fab2041666b2b4d2f4547035804ee9fa7cc5487d6a428f5354e0a793064b'

  url 'http://bluezbox.com/audiobookbinder/AudiobookBinder-2.0.dmg'
  appcast 'http://bluezbox.com/audiobookbinder/appcast.xml'
  homepage 'http://bluezbox.com/audiobookbinder.html'

  app 'AudioBookBinder.app'
end
