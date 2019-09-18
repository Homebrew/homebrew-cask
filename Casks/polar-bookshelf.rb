cask 'polar-bookshelf' do
  version '1.32.29'
  sha256 '8250342a6432b57c1389d3d981ccb7617bac572a3ee3ce70673fdcd35868b8b4'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
