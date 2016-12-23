cask 'google-play-music-desktop-player' do
  version '4.0.5'
  sha256 '12e4baae2f941e481346990c7e2f4bace7ba9b3313ce0ede24e41258d1cdeb8b'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '68ce60a4b41ad37bd6fe72df592bac9e4ae8ed2c934fc69b76912b654fdeeb94'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

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
