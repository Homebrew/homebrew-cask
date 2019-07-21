cask 'polar-bookshelf' do
  version '1.30.1'
  sha256 'dc6630a9254fec9702f4b5dc1ee78208784175dfb681a01c6f6fc52346fa01b3'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
