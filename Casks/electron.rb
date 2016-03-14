cask 'electron' do
  version '0.37.1'
  sha256 '11da3cf83c17841f8454c32111428f5208bcec57f9f08d22115056b4cde0f8c6'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '993f616ef1e9584599517e18b3ffe8ed521528825887b4c9160ca050c81d5ba6'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
