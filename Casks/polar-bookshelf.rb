cask 'polar-bookshelf' do
  version '1.80.10'
  sha256 'b613e5cc583e4811431fdfe1c7248c43e0a0e6b1caca0057a6aeefbb40b48852'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
