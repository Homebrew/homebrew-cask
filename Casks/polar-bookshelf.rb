cask 'polar-bookshelf' do
  version '1.13.5'
  sha256 'e96d3917cd8c382859dc2033609646a8e015ec0b55c2b36b9daf86fb3df71a6d'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
