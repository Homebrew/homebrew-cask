cask 'music-manager' do
  version '1.0.478.2698'
  sha256 '10b122b36c429e9ac448fa1edfb6082a341112f4d7823736ae73aa9c1e563fcd'

  url "https://dl.google.com/dl/androidjumper/mac/#{version.sub(%r{^\d+\.\d+\.}, '').delete('.')}/musicmanager.dmg"
  name 'Google Play Music Manager'
  homepage 'https://play.google.com/music/listen'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/4282
  app 'MusicManager.app', target: 'Music Manager.app'

  uninstall delete:     '~/Library/PreferencePanes/MusicManager.prefPane',
            login_item: 'Music Manager',
            quit:       'com.google.musicmanager'

  zap trash: [
               '~/Library/Application Support/Google/MusicManager',
               '~/Library/Logs/MusicManager',
               '~/Library/Preferences/com.google.musicmanager.plist',
             ]
end
