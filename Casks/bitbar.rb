cask 'bitbar' do
  version '1.6.0'
  sha256 '1e177e1b86ed641c9bdd1a537177286447f2085d2f609955a53209fdd16e70bd'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '9ca686f6e007eb1db6698cafcd6caad548e74943e102f8ed9c9b5355b7cd988a'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
