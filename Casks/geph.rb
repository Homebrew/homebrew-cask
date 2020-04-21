cask 'geph' do
  version '3.6.1'
  sha256 '279b8935ecc0ee69cf74db2e8fa9141982e0333d10248840d16d025aab07de83'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
