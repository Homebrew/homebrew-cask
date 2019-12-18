cask 'marshallofsound-google-play-music-player' do
  version '4.6.1-ci-build-3744'
  sha256 '597a704d7058ad5f3c4f274246d7a1bf1714ce5a78daf88696746778f88f8a93'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://3744-40008106-gh.circle-artifacts.com/0/Users/distiller/project/dist/installers/darwin/Google%20Play%20Music%20Desktop%20Player.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

  app 'Google Play Music Desktop Player.app'

  uninstall signal: [
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
