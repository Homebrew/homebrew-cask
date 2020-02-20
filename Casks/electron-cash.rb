cask 'electron-cash' do
  version '4.0.12'
  sha256 'bafc139fa31a81700abc4d19c86753690cc3b297a78a51bffa34c783cab25de8'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
