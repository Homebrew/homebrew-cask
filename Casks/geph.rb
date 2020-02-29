cask 'geph' do
  version '3.4.5'
  sha256 '0a7ccbd8253d980c4e976164104c0bb20e6ea9fb45742cce735351ac3edd1123'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
