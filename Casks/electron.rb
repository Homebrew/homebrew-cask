cask 'electron' do
  version '1.1.1'
  sha256 'f0a3d8bef18e6ae7016648196f4ce86dc42a6a09ca94b94e2386ecbbcbab5d40'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '185073c6b84473777f338f55d5e8430d410af64fd116fd78fa9e32f9746c8b00'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
