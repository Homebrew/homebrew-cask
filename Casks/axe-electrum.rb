cask 'axe-electrum' do
  version '3.3.8.6'
  sha256 '0bedd0d20de4468888fde78e91bf23fd127aac6d5478d5b26c74c13baad899d9'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
