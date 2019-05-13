cask 'polar-bookshelf' do
  version '1.19.2'
  sha256 '00dcd3f8db35756cb5fc55b2c3dd014e2b3503c2384c5cd92a7f161a9a93925e'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
