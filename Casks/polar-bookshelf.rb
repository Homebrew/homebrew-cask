cask 'polar-bookshelf' do
  version '1.8.0'
  sha256 'b848996b0bab11b9dd1be5e00351b9ab1eefcca99b2e2365b8f4007a4692beb0'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
