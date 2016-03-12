cask 'electron' do
  version '0.37.0'
  sha256 '4bce5b8e227b8d2a2589be434915b406438cdaa7abafbae51ec860215f56efe1'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'ba9aff4f10f2596ecb902f45762eade82823b6c1c6000ee6ad57cd2098f16280'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
