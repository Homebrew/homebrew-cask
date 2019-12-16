cask 'axe-electrum' do
  version '3.3.8.4'
  sha256 '86b74c4231d5b5032e6db3bb9f2cd4d29046775a7e5e654c0b2ece68f5504ddb'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
