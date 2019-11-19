cask 'axe-electrum' do
  version '3.3.8.2'
  sha256 '67c8968a8d5e419364fcf2ad573d23b0d26892e939f9faec6a3c9acad8f9d9cf'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
