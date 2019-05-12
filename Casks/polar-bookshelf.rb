cask 'polar-bookshelf' do
  version '1.19.0'
  sha256 '6a60a425e6e3c5be90fd8744dc3657e91fbfa66cb076019a0b1e53f05579825a'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
