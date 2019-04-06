cask '5kplayer' do
  version '5.7.0'
  sha256 '8285bdd1953a5946f9869a4054b77d85cb9b5d3b653e8367c097b85de7a0c2d7'

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
