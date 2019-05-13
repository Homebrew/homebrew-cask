cask 'elmedia-player' do
  version '7.3,1805'
  sha256 '0698933c2e55dc72e31c923654efc77cee429b0ef9258f9e334fd67c7f8f42ef'

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
