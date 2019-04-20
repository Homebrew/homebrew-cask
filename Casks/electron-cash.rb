cask 'electron-cash' do
  version '4.0.2'
  sha256 'edce2676a1c57814f99c95dd6a31d2b8778b6129d64559d61103f09daf0f3579'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
