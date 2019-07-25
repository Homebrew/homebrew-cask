cask 'electron-cash' do
  version '4.0.8'
  sha256 '3a30441c8e7bafbcc41fa79fe68869646c1f7238a0f5a1b72f54842e7eaae322'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
