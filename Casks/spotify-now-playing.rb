cask 'spotify-now-playing' do
  version '0.6.1'
  sha256 '03577db60b6cc0788ea8a55a0c69509b1b9f979ee23aad9a72dd6552b3e1854f'

  url "https://github.com/davicorreiajr/spotify-now-playing/releases/download/v#{version}/spotify-now-playing-#{version}.dmg"
  appcast 'https://github.com/davicorreiajr/spotify-now-playing/releases.atom'
  name 'Spotify - now playing'
  homepage 'https://github.com/davicorreiajr/spotify-now-playing'

  app 'Spotify - now playing.app'

  zap trash: [
               '~/Library/Logs/Spotify - now playing',
               '~/Library/Preferences/com.electron.spotify-now-playing.plist',
             ]
end
