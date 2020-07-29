cask '5kplayer' do
  version '6.3.0'
  sha256 'b2694dff258150266434ea1182d679e1d6181d28e2459358766800363d6af76b'

  url 'https://www.5kplayer.com/download/5kplayer.dmg'
  appcast 'https://www.5kplayer.com/upgrade/mac/updatecast.xml'
  name '5KPlayer'
  homepage 'https://www.5kplayer.com/'

  app '5KPlayer.app'

  uninstall quit: 'com.digiarty.5kplayer'

  zap trash: [
               '~/Library/Caches/com.digiarty.5kplayer',
               '~/Library/Preferences/com.digiarty.5kplayer.plist',
               '~/Library/Saved Application State/com.digiarty.5kplayer.savedState',
             ]
end
