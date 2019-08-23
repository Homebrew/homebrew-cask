cask 'electron-cash' do
  version '4.0.9'
  sha256 'f48d1803848d9782bd7707abb400312b25ac7d2ced2dad581692e10065fbb306'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
