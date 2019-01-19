cask 'polar-bookshelf' do
  version '1.9.0'
  sha256 '083262e3a4b0693b6ed636eb77ee46bad8dd2efbd6de07c50147fcebc434f58c'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
