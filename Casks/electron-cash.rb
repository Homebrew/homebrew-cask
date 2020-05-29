cask 'electron-cash' do
  version '4.0.15'
  sha256 '855835e7bdf8e65012d7e3cb709a4a752616ab1df43c694d7c0089662829197d'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
