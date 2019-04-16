cask 'spotify' do
  version '1.1.4.197.g92d52c4f'
  sha256 '1a24517567bcda501493a7f6db2708c2b1de9e34599d838d03b8ec0bf2145c27'

  # scdn.co was verified as official when first introduced to the cask
  url 'https://download.scdn.co/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com/'

  app 'Spotify.app'

  uninstall launchctl:  'com.spotify.webhelper',
            login_item: 'Spotify'

  zap trash: [
               '~/Library/Application Support/Spotify',
               '~/Library/Caches/com.spotify.client',
               '~/Library/Caches/com.spotify.client.helper',
               '~/Library/Cookies/com.spotify.client.binarycookies',
               '~/Library/Logs/Spotify',
               '~/Library/Preferences/com.spotify.client.plist',
               '~/Library/Preferences/com.spotify.client.helper.plist',
               '~/Library/Saved Application State/com.spotify.client.savedState',
             ]
end
