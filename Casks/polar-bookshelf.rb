cask 'polar-bookshelf' do
  version '1.19.8'
  sha256 '25f8f4e54d7881d52b7aca035696dbbb8a1f5f139e50c6ae5e1c0034e0db9308'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
