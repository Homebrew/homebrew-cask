cask 'electron-cash' do
  version '3.3.1'
  sha256 '3d9ba670c0d1cb839cbfe322d0925783797bbea57e27a43fbafdc9ba132c95e2'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
