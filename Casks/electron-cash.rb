cask 'electron-cash' do
  version '3.1.2'
  sha256 '80114dea63a1e1fa4fa7a290eb3786a97ec249cf71614f16c1e262ea503aa68f'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
