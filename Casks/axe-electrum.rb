cask 'axe-electrum' do
  version '3.3.8.5'
  sha256 '8e71de1959c8306c8f3ae24d3eb74a2d8430ffa322939aac14328712a6d13124'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
