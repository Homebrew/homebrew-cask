cask 'polar-bookshelf' do
  version '1.60.11'
  sha256 '27f2315f75ec7b65f6914292cf876fbfc30f9f11a8701b8b508e74b0775f58e0'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
