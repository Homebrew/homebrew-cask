cask 'electron-cash' do
  version '4.0.6'
  sha256 '4af9c56bc833cf7069eeee1a3fb8da7397826f2615bbc0b74ca10703820c9310'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
