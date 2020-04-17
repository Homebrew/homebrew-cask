cask 'music-manager' do
  version '1.0.91.1050'
  sha256 '29693e36013a0afad879a7a8f4ff649483bd14ab37df0b1f3a27bb95551ed33d'

  url "https://dl.google.com/dl/androidjumper/mac/#{version.sub(%r{^\d+\.\d+\.}, '').delete('.')}/musicmanager.dmg"
  name 'Google Play Music Manager'
  homepage 'https://play.google.com/music/listen'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/4282
  app 'MusicManager.app', target: 'Music Manager.app'

  uninstall delete: '~/Library/PreferencePanes/MusicManager.prefPane',
            quit:   'com.google.musicmanager'

  zap trash: [
               '~/Library/Application Support/Google/MusicManager',
               '~/Library/Logs/MusicManager',
               '~/Library/Preferences/com.google.musicmanager.plist',
             ]
end
