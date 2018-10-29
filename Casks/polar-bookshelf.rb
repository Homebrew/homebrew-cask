cask 'polar-bookshelf' do
  version '1.0.9'
  sha256 'c0ce41aaa03f05440ac945282c731d035b8c3b64c1e86b9514540fa98eec3d4e'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
