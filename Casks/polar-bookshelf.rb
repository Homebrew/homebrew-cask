cask 'polar-bookshelf' do
  version '1.30.8'
  sha256 '15ede45841d2cd4b10ac529c7544c10299fb0aa628caa509070bf9e8808cafaa'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
