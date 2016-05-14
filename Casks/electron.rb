cask 'electron' do
  version '1.1.0'
  sha256 '1f9a6a93d20b156ef9011b42fbc3b38c054271578312858ef30b7b6db3b60846'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '4b692564c630075833d2086222cd3123baf1732b0b2bde9895f70677b60df5f3'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
