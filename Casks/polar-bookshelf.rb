cask 'polar-bookshelf' do
  version '1.13.10'
  sha256 '300e1d89f3d561951b907dd6b1c9cb9fb1bdaac53e31a50536f1562a88b77aa0'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
