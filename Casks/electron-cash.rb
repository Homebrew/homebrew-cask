cask 'electron-cash' do
  version '3.0'
  sha256 '8d6e737f2434800218978bbd594d8a386b7c566534b2ae1839d84a36b68ddd05'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
