cask 'electron-cash' do
  version '4.0.11'
  sha256 'ab90d13ac2c8fcb7d934f6881d1de54e5d5a27918f2d2e8c9843b34128849bfc'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/Electron-Cash/Electron-Cash/releases.atom'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
