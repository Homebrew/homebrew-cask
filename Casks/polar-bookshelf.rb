cask 'polar-bookshelf' do
  version '1.1.1'
  sha256 '00c5021cfff2edc93285e2d35b40d95f7a0564185f69394f1694fe2eb6bbd43d'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
