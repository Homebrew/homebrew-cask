cask 'polar-bookshelf' do
  version '1.19.6'
  sha256 '4dc74da1a3e81993c2d680fae0decab46c6fbf71b9aaeabbce6e23bd42a827c4'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
