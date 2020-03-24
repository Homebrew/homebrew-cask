cask 'geph' do
  version '3.5.0'
  sha256 '109828be612adb059d595dfb7c5dd221fadcf86d92d4eaae1fd6bc56847247cb'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
