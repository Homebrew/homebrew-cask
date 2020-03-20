cask 'electron-cash' do
  version '4.0.13'
  sha256 '51774cbc85e676227ab5c6c43223f4ddf345e1ab78608a3cd5c24f1c1eb03db9'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
