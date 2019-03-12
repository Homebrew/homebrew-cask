cask 'elmedia-player' do
  version '7.2,1765'
  sha256 '78065d805972d6bb25973e91fb57503d43b0b968a21559b7fc2c44640771b417'

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
