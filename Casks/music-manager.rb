cask 'music-manager' do
  version '1.0.216.5719'
  sha256 '948967d9325bde3e7344504e965dbcd9f94bee01512f4c49ad3e4d9425798f11'

  url "https://dl.google.com/dl/androidjumper/mac/#{version.sub(%r{^\d+\.\d+\.}, '').delete('.')}/musicmanager.dmg"
  name 'Google Play Music Manager'
  homepage 'https://play.google.com/music/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/4282
  app 'MusicManager.app', target: 'Music Manager.app'
end
