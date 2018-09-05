cask 'marshallofsound-google-play-music-player' do
  version '4.6.1'
  sha256 '14bbaf4f81c302b787b36c1d0fdc44a990dcb73dd987e8b5fd0f259283a1fa2e'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

  app 'Google Play Music Desktop Player.app'

  uninstall login_item: 'Google Play Music Desktop Player',
            signal:     [
                          ['TERM', 'google-play-music-desktop-player'],
                          ['TERM', 'google-play-music-desktop-player.helper'],
                        ]

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/google-play-music-desktop-player.sfl*',
               '~/Library/Application Support/Google Play Music Desktop Player',
               '~/Library/Application Support/google-play-music-desktop-player.ShipIt',
               '~/Library/Caches/Google Play Music Desktop Player',
               '~/Library/Caches/google-play-music-desktop-player.ShipIt',
               '~/Library/Caches/google-play-music-desktop-player',
               '~/Library/Cookies/google-play-music-desktop-player.binarycookies',
               '~/Library/Preferences/google-play-music-desktop-player.helper.plist',
               '~/Library/Preferences/google-play-music-desktop-player.plist',
               '~/Library/Saved Application State/google-play-music-desktop-player.savedState',
             ]
end
