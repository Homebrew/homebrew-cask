cask 'google-play-music-desktop-player' do
  version '3.4.1'
  sha256 '75bdcbdc4edccb8a9f4e651a2e652b38aae6a4bedd344f7ce06fa302851098ad'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '094e269dc158b7a8ce36a5e095871ffc91a80c6acf2dced67ee37599e9700b5d'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'
  license :mit

  app 'Google Play Music Desktop Player.app'

  zap delete: [
                '~/Library/Application\ Support/Google\ Play\ Music\ Desktop\ Player',
                '~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/google-play-music-desktop-player.sfl',
                '~/Library/Application\ Support/google-play-music-desktop-player.ShipIt',
                '~/Library/Caches/Google\ Play\ Music\ Desktop\ Player',
                '~/Library/Caches/google-play-music-desktop-player',
                '~/Library/Cookies/google-play-music-desktop-player.binarycookies',
                '~/Library/Preferences/google-play-music-desktop-player.plist',
                '~/Library/Saved\ Application\ State/google-play-music-desktop-player.savedState',
              ]
end
