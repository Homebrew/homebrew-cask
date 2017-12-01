cask 'spotify' do
  version '1.0.68.407.g6864aaaf-37'
  sha256 '56081655d0b559d69fc2b3ed894c0ef77d82c53b6c9ae0336c6dd94131885264'

  url "https://upgrade.spotify.com/upgrade/client/osx-x86_64/spotify-autoupdate-#{version}.tbz"
  name 'Spotify'
  homepage 'https://www.spotify.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app '.', target: 'Spotify.app'

  uninstall quit:       'com.spotify.client',
            launchctl:  'com.spotify.webhelper',
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
