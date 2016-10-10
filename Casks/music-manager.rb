cask 'music-manager' do
  version '1.0.243.1116'
  sha256 'e425d1724d092ae5ddfb28ad4304439754394b91ab3ff3063b66196d2ffe4bee'

  url "https://dl.google.com/dl/androidjumper/mac/#{version.sub(%r{^\d+\.\d+\.}, '').delete('.')}/musicmanager.dmg"
  name 'Google Play Music Manager'
  homepage 'https://play.google.com/music/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/4282
  app 'MusicManager.app', target: 'Music Manager.app'

  uninstall delete: '~/Library/PreferencePanes/MusicManager.prefPane'
end
