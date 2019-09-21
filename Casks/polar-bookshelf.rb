cask 'polar-bookshelf' do
  version '1.32.32'
  sha256 '0ff76b9ff438916ed7431617ff873186f86a0d3cfe1bf62bb7591b40f830ffd5'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
