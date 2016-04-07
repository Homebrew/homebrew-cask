cask 'electron' do
  version '0.37.5'
  sha256 '410ecfa4319adc63fc980ffa06c39dc5e29065bc313744ff3e1ec40caedaeb17'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '4b692564c630075833d2086222cd3123baf1732b0b2bde9895f70677b60df5f3'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
