cask 'polar-bookshelf' do
  version '1.15.2'
  sha256 'fd7dae67940817d058d561cdacfec3bb3ca46e2f33bfe0e7f2c256fe1405bc51'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
