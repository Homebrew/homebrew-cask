cask 'axe-electrum' do
  version '3.3.8.8'
  sha256 '4caf5256470824c9d5ba61e0c75fa64e1c092bf30017e76db3b4f11c0d136a3f'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
