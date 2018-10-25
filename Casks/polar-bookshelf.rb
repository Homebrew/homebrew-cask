cask 'polar-bookshelf' do
  version '1.0.3'
  sha256 '43418bce3d8bebb8d6bbe673d41a39d3600f1ebefa6d7c596b923594abff4d7b'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
