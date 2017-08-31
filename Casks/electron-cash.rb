cask 'electron-cash' do
  version '2.9.3'
  sha256 'bc0b983c1adbd13be3cf19cde15353872bb5ff91929b1a9271f9e3115ba8dacd'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
