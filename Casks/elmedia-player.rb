cask 'elmedia-player' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/elmediaplayer.dmg'
  name 'Elmedia Player'
  homepage 'http://mac.eltima.com/media-player.html'

  app 'Elmedia Player.app'

  zap delete: [
                '~/Library/Caches/com.Eltima.ElmediaPlayer',
                '~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist',
                '~/Library/Preferences/com.Eltima.ElmediaPlayer.plist',
                '~/Library/Preferences/com.eltima.activator.xml',
              ]
end
