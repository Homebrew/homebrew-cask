cask 'polar-bookshelf' do
  version '1.100.13'
  sha256 'bd1652de7de8457cc7a986d977f20d07666334702bbe06748096be6c06179fcb'

  # github.com/burtonator/polar-bookshelf/ was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
