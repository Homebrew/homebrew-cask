cask 'polar-bookshelf' do
  version '1.16.0'
  sha256 'd0bbc89a38f8d2af3d45e72c6848dd9e1da9608b6b99c05d306e0b0d39e00f5a'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
