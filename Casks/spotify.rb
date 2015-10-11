cask :v1 => 'spotify' do
  version :latest
  sha256 :no_check

  url 'https://download.spotify.com/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com'
  license :gratis
  depends_on :macos => '>= :snow_leopard'

  app 'Spotify.app'

  uninstall :launchctl => 'com.spotify.webhelper'

  zap :delete => [
                  '~/Library/Application Support/Spotify',
                  '~/Library/Preferences/com.spotify.client.plist',
                  '~/Library/Preferences/com.spotify.client.helper.plist',
                  '~/Library/Caches/com.spotify.client',
                  '~/Library/Saved Application State/com.spotify.client.savedState',
                  '~/Library/Logs/Spotify'
                 ]
end
