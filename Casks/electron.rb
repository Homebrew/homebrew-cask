cask 'electron' do
  version '0.36.9'
  sha256 '889fbb4494f73117e44c5f11542d26c3411bd7fc8a970c8f0aa728c1eabc5587'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '257ff5a0eaaae3eaeadcf4c0b900f0ec93d81e807d514e466ae0163fbbd55797'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
