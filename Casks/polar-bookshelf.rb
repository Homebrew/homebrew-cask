cask 'polar-bookshelf' do
  version '1.13.11'
  sha256 'f1b8e17d370fa8aac4376dec4a7953f8c8f63d16dff90736565ce73a03f2546e'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
