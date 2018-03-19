cask 'electron-cash' do
  version '3.1.6'
  sha256 '8a6a6a813c2ea6f714d1e29b16f8775e150cd0ef1149f5f472683d684c1558fa'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
