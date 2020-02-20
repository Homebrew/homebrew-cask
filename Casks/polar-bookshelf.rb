cask 'polar-bookshelf' do
  version '1.90.18'
  sha256 '7bdf1b40ed6c201461078e3f15ae5bf6b38252196452ba42e3ca76b33f4fc8c1'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
