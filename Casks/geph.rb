cask 'geph' do
  version '3.5.3'
  sha256 'cabe3521694223152000116e4d9d4b580b7165e5501ce7a3e936ebdd82faac11'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
