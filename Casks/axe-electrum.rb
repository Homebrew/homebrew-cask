cask 'axe-electrum' do
  version '3.3.6'
  sha256 '4d2c203c47afe5728af239af7823f555e34c46ccc814531cfa11958db8417fd3'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
