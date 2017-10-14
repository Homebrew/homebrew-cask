cask 'spotify' do
  version :latest
  sha256 :no_check

  url 'https://download.spotify.com/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Spotify.app'

  uninstall launchctl:  'com.spotify.webhelper',
            login_item: 'Spotify'

  zap delete: [
                '~/Library/Caches/com.spotify.client',
                '~/Library/Caches/com.spotify.client.helper',
                '~/Library/Cookies/com.spotify.client.binarycookies',
                '~/Library/Logs/Spotify',
                '~/Library/Saved Application State/com.spotify.client.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Spotify',
                '~/Library/Preferences/com.spotify.client.plist',
                '~/Library/Preferences/com.spotify.client.helper.plist',
              ]
end
