cask 'elmedia-player' do
  version '7.7,1843'
  sha256 'ef46a8244ada4dcdad511421791f3af6e43243f28c9f760cc658ab3221539948'

  url 'https://cdn.eltima.com/download/elmediaplayer.dmg'
  appcast 'https://cdn.eltima.com/download/elmediaplayer-update/elmediaplayer.xml'
  name 'Elmedia Player'
  homepage 'https://mac.eltima.com/media-player.html'

  app 'Elmedia Player.app'

  zap trash: [
               '~/Library/Caches/com.Eltima.ElmediaPlayer',
               '~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist',
               '~/Library/Preferences/com.Eltima.ElmediaPlayer.plist',
               '~/Library/Preferences/com.eltima.activator.xml',
             ]
end
