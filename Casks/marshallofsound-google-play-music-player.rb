cask 'marshallofsound-google-play-music-player' do
  version '4.5.0'
  sha256 '2d43b0c69fa38d90a26cb711bcb952cb9be525d3ace9e8a5c5d7fe5e5a27db26'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: 'd42e292ee448fb7d18f98d4def3572747e0bd14904b8f18b952c04151edd4d09'
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
