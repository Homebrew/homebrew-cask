cask 'polar-bookshelf' do
  version '1.90.0'
  sha256 '7987c3333eb0c1b043eadfc3863c52e3a08f5ad4c749ff64142ec23df7630b52'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
