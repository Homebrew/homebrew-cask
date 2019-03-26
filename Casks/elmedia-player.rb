cask 'elmedia-player' do
  version '7.2.1,1778'
  sha256 'd53698e2a37ae550ed52de5ce5643e497a8f163e0b113afd16c12c8c7e5fb337'

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
