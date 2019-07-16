cask 'electron-cash' do
  version '4.0.7'
  sha256 'cdc824dc986c6c9e9d468efb02fd2ae40145e47edcabe9b53f7939ba445116be'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
