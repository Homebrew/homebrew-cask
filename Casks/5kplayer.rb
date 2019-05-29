cask '5kplayer' do
  version '5.8.0'
  sha256 '1c8ff8668abcb41b770e79f765e18ab22b59b5cf12b2fdb9c97ec82ad17ed3b4'

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
