cask 'polar-bookshelf' do
  version '1.0.14'
  sha256 'fa3de30dd31c625278d9f75537d0588f3a19ec5ff8c7ee88e89854d5b08221a0'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
