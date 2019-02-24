cask 'polar-bookshelf' do
  version '1.13.4'
  sha256 'dda35ecedf0aa23ea845b06b20dcfad9d8cc270b1a4bb4d5d292a36a894d2935'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
