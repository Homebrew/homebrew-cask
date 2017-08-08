cask 'google-play-music-desktop-player' do
  version '4.4.0'
  sha256 'd33b699bd7ca1da2ea0dc9da63035556184f9a21979a4a181892939426180dc7'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '9cee9cb1172d62b26b46c65f31d33face4064b62b49d647afa79ecedbf95777a'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

  app 'Google Play Music Desktop Player.app'

  uninstall login_item: 'Google Play Music Desktop Player',
            signal:     [
                          ['TERM', 'google-play-music-desktop-player'],
                          ['TERM', 'google-play-music-desktop-player.helper'],
                        ]

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/google-play-music-desktop-player.sfl',
                '~/Library/Caches/Google Play Music Desktop Player',
                '~/Library/Caches/google-play-music-desktop-player.ShipIt',
                '~/Library/Caches/google-play-music-desktop-player',
                '~/Library/Cookies/google-play-music-desktop-player.binarycookies',
                '~/Library/Saved Application State/google-play-music-desktop-player.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Google Play Music Desktop Player',
                '~/Library/Application Support/google-play-music-desktop-player.ShipIt',
                '~/Library/Preferences/google-play-music-desktop-player.helper.plist',
                '~/Library/Preferences/google-play-music-desktop-player.plist',
              ]
end
