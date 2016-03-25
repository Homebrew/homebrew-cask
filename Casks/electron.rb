cask 'electron' do
  version '0.37.2'
  sha256 'd9e4d625860ee1a272be39f44c3e8ad23eba7d1dcd8d1ae531eacc76b21ff4f9'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'a0720f6e2cf12b2c015838cb47b4777ff652cdfa039a0730b44670c7b51026e5'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
