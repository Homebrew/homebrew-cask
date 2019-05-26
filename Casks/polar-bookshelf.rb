cask 'polar-bookshelf' do
  version '1.19.7'
  sha256 '698b75fb1d6b27d3282b70e3d7491fb4410cdb7d34b353ffe9227fac181f99ac'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
