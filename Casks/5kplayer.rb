cask '5kplayer' do
  version '4.9.1'
  sha256 '7ab987be8348df62cc57fe5cb4ac67c1b133e3603dba43b91c1a2634943833fa'

  url 'https://www.5kplayer.com/download/5kplayer.dmg'
  appcast 'http://www.5kplayer.com/upgrade/mac/updatecast.xml'
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
