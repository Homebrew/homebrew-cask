cask :v1 => 'electron' do
  version '0.34.1'
  sha256 '9ee5809cf19cae8d2c6fac52f05272bfbdc21fe88df62c09a6a079996703d22e'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '8b07177672490f2e6ee1f8bb98b56a04586e7e122f530c4c05bf942508056fb6'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
