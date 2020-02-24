cask 'geph' do
  version '3.4.2'
  sha256 '0a74f8bda87a84fcec1e92b3463db92173223ae22447f442c9a07cfd4d921ac3'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
