cask 'electron-cash' do
  version '4.0.14'
  sha256 '167b7a84d267f6776787a6a3c40589fb3dbefc2395be98fe44513bfe627b3a58'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
