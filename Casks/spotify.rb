cask 'spotify' do
  version :latest
  sha256 :no_check

  url 'https://download.spotify.com/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com'
  license :gratis

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Spotify.app'

  uninstall launchctl:  'com.spotify.webhelper',
            login_item: 'Spotify'

  zap delete: [
                '~/Library/Application Support/Spotify',
                '~/Library/Preferences/com.spotify.client.plist',
                '~/Library/Preferences/com.spotify.client.helper.plist',
                '~/Library/Caches/com.spotify.client',
                '~/Library/Saved Application State/com.spotify.client.savedState',
                '~/Library/Logs/Spotify',
              ]
end
