cask 'google-play-music-desktop-player' do
  version '3.4.0'
  sha256 'c033978774fff505da0c5ffa7359b6c02f9f8bba494d22ec229d194b6053d264'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: 'cecf973384ed9394f6d02af6e76d85e220c77fd54dce3081bcd9d14131d735f7'
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
