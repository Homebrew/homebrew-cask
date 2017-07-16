cask 'google-play-music-desktop-player' do
  version '4.3.0'
  sha256 '0b9ae207fbc9c38d7fddba5d7185be99d741d2b318e1933332f6cda7b48b3c6e'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '9e44e95944481b7485480a0288aa3e94f84975c921b21e1708f0f7a96725d0ec'
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
