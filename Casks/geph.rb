cask 'geph' do
  version '3.4.0'
  sha256 'ee8187acac69f62e448fa1515269f29a52c1cc54205a4ccede3d7a409b4c4d7d'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
