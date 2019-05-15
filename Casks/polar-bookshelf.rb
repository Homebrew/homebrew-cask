cask 'polar-bookshelf' do
  version '1.19.4'
  sha256 '6853d4c4f34823d99f2ce4d821dac7a2ba6d8bf853a3e2ad2711193c70c10509'

  # github.com/burtonator/polar-bookshelf was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/polar-bookshelf-#{version}.dmg"
  appcast 'https://github.com/burtonator/polar-bookshelf/releases.atom'
  name 'Polar Bookshelf'
  homepage 'https://getpolarized.io/'

  app 'Polar Bookshelf.app'
end
