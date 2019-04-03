cask 'polar-bookshelf' do
  version '1.16.2'
  sha256 '6237b9eda6d3cc5c97910e3b232e0e7641d9feba959ff22b2afd15f91bd1685d'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
