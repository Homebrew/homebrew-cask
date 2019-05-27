cask 'electron-cash' do
  version '4.0.4'
  sha256 '240e3e55c6f25177143fea37bff96a0a4f5a057d7807e197727916f571ed77e3'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
