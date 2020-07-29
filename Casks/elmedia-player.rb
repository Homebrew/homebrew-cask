cask 'elmedia-player' do
  version '7.12,2164'
  sha256 '846f0e9c10506ba035e785ae0c6cbf90cf6176d1ba12d54f2014ec27462393d1'

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
