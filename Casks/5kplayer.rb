cask '5kplayer' do
  version '6.1.0'
  sha256 '44b2930ceb37630f9384f9f863bda05401dee0669dc8ec3c09f184ce08ae0b80'

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
