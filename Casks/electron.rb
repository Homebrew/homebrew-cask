cask 'electron' do
  version '0.36.5'
  sha256 'df745ec246e2fcb0343a75db2d350ac56f9b2d91e7a5fe787ac0e0e8c976da10'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '88b4c68740b058659f016f6aa8ac1d9b3e17084cde51ffab773ef3fad7700f64'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
