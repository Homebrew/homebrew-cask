cask :v1 => 'audiobookbinder' do
  version '2.0'
  sha256 '7f66fab2041666b2b4d2f4547035804ee9fa7cc5487d6a428f5354e0a793064b'

  url "http://bluezbox.com/audiobookbinder/AudiobookBinder-#{version}.dmg"
  appcast 'http://bluezbox.com/audiobookbinder/appcast.xml',
          :sha256 => '7ecc34610523c4ffc27749f07776a5f7afc8fdb679d769952566de338f6b0ccb'
  homepage 'http://bluezbox.com/audiobookbinder.html'
  license :oss

  app 'AudioBookBinder.app'
end
