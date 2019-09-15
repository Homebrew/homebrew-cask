cask 'axe-electrum' do
  version '3.3.8'
  sha256 'd27a804e54040688f10854bec48159916365b6bf9ce88bf8134e72601fbe383d'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
