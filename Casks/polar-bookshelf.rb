cask 'polar-bookshelf' do
  version '1.13.12'
  sha256 '54b7f2a4c955f4441173413ea59383b315f5e0c0f5254e2b40191bfc4b36c8ba'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
