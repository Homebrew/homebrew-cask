cask 'iconizer' do
  version '2.5.1'
  sha256 'd01aaf267cb6f4ccebf59eceddc40c8f2a309cde03798d78060275283c194e0d'

  # github.com/raphaelhanneken/iconizer was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast 'https://github.com/raphaelhanneken/iconizer/releases.atom'
  name 'Iconizer'
  homepage 'http://raphaelhanneken.github.io/iconizer/'

  app 'Iconizer.app'
end
