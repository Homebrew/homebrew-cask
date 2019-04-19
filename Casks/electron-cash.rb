cask 'electron-cash' do
  version '4.0.1'
  sha256 '92ad4a65d2d5bafccd9ea0541ac1abbd3c245a0fb7ba8a1d22f69c21843fd6bf'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
