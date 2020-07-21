cask 'geph' do
  version '3.6.4'
  sha256 '7abf7c3359a14c72a90ca70b756a89b87c378955a30507266be2c29c626f9618'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
