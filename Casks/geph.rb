cask 'geph' do
  version '3.2.6'
  sha256 'f92af875500ac4efa4269d4c565ec751e0e5b494a380c98ca481e11386fdea75'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
