cask :v1 => 'spotify' do
  version :latest
  sha256 :no_check

  url 'http://download.spotify.com/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com'
  license :gratis

  app 'Spotify.app'

  uninstall :launchctl => 'com.spotify.webhelper'

  zap :delete => [
                  '~/Library/Application Support/Spotify',
                  '~/Library/Preferences/com.spotify.client.plist',
                  '~/Library/Caches/com.spotify.client',
                  '~/Library/Logs/Spotify'
                 ]
end
