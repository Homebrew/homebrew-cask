cask 'polar-bookshelf' do
  version '1.13.2'
  sha256 '9386bbf689ac020b22cf9911bda444a06e231c909416a539d514e5f24cc5bbea'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
