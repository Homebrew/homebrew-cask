cask 'spotify' do
  version :latest
  sha256 :no_check

  # download.scdn.co/Spotify.dmg was verified as official when first introduced to the cask
  url 'https://download.scdn.co/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com/'

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
                '~/Library/Caches/com.spotify.client.helper',
                '~/Library/Saved Application State/com.spotify.client.savedState',
                '~/Library/Logs/Spotify',
                '~/Library/Cookies/com.spotify.client.binarycookies',
              ]
end
