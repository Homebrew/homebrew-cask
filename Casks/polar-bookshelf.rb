cask 'polar-bookshelf' do
  version '1.31.0'
  sha256 '83b6a86e6891313f5e98bb73286f1b602cd8ecef38fa3a2efc3f676bffa5343e'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
