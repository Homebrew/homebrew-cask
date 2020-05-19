cask 'axe-electrum' do
  version '3.3.8.7'
  sha256 'f3f8a7cba3df97447d422c09fecd891a6d50299132f16eaa6c1149d401652947'

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/axerunners/electrum-axe/releases.atom'
  name 'Axe Electrum'
  homepage 'https://github.com/axerunners/electrum-axe'

  app 'Axe Electrum.app'
end
