cask 'axe-electrum' do
  version '3.3.8.3'
  sha256 '64370b1a3bd6fd7416110f4fe918a33d431f61981f00fc90a7ddbec36b6f2029'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
