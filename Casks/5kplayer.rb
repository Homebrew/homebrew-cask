cask '5kplayer' do
  version :latest
  sha256 :no_check

  url 'https://www.5kplayer.com/download/5kplayer.dmg'
  name '5KPlayer'
  homepage 'https://www.5kplayer.com/'

  app '5KPlayer.app'

  uninstall quit: 'com.digiarty.5kplayer'

  zap delete: [
                '~/Library/Caches/com.digiarty.5kplayer',
                '~/Library/Preferences/com.digiarty.5kplayer.plist',
                '~/Library/Saved Application State/com.digiarty.5kplayer.savedState',
              ]
end
