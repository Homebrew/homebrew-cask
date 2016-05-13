cask 'electron' do
  version '1.0.2'
  sha256 'eed3bc4c56ed25bb2b57be9c3c4f0eca3565b4c9a8ffff70c77d7058cf4e320e'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '4b692564c630075833d2086222cd3123baf1732b0b2bde9895f70677b60df5f3'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
