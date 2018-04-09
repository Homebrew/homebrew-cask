cask 'gpmdp' do
  version '4.5.0'
  sha256 '2d43b0c69fa38d90a26cb711bcb952cb9be525d3ace9e8a5c5d7fe5e5a27db26'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: '20c4bcba908bb7e9a4ad0f7fc021fc9de2c44406e72a0b8b9dadde818984fff4'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

  app 'Google Play Music Desktop Player.app'

  zap trash: [
               '~/Library/Application Support/Google Play Music Desktop Player',
               '~/Library/Caches/google-play-music-desktop-player',
               '~/Library/Caches/google-play-music-desktop-player.ShipIt',
             ]
end
