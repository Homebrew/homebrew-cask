cask 'spotify' do
  version '1.0.92.390.g2ce5ec7d'
  sha256 '399f999d8b4c3a80d01dfe9c74482688e651836afe81192289eadc29570f4175'

  # scdn.co was verified as official when first introduced to the cask
  url 'https://download.scdn.co/Spotify.dmg'
  name 'Spotify'
  homepage 'https://www.spotify.com/'

  depends_on macos: '>= :lion'

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
