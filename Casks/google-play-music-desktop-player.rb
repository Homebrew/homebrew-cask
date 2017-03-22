cask 'google-play-music-desktop-player' do
  version '4.2.0'
  sha256 '5622b6babe20f1b80211ead3b24f4e92dea5b45498e3c8680f86403b4064910f'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '4dc7e53e80fc8fbd25b5a3c191be1917bfc91b996a28b6aa2e681b79cd486a2d'
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
