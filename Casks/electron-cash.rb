cask 'electron-cash' do
  version '4.0.10'
  sha256 '8e2bd667a9681ec896f080d00e5d5655c00e52291561bf8dedb481c10fc69a29'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
