cask 'electron-cash' do
  version '2.9.4'
  sha256 '834154ffecc6a1e77c5d0bd868905b573eef4e201bfd459aff2ab731dafb176d'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
