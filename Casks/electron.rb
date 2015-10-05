cask :v1 => 'electron' do
  version '0.33.3'
  sha256 'e83967d4f2aba573067ac10965a3bd188e90c24249e3a842e7728a293f5ad514'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '4576d50562b71f9272476515e2a188042a0ab723a57930777ea7287f948a5488'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
