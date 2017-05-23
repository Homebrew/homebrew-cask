cask '5kplayer' do
  version '4.2'
  sha256 '0ad05ce71d8b1e0b4777647087d0c034c83ae7d40c8a19ca1324f70eec55de34'

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
