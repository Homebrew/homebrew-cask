cask 'polar-bookshelf' do
  version '1.7.0'
  sha256 'f4365799b9ddf011284544d23d65aa515a983f696baf832f96413cfdadac857f'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
