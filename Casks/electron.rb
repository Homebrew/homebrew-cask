cask :v1 => 'electron' do
  version '0.32.3'
  sha256 '2b3883144c029030cd85b08c091c1307251caea59bf1575970fff7334fdebc0a'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '8ae85b6f1f175971c4c9ed864c764a18519b7ad5e4b34e82a59ab1b04358bd8e'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
