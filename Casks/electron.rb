cask 'electron' do
  version '0.36.10'
  sha256 '8692d812f70f75659c0f79ab1d376cd47a69d7fc9c5d3317f68acfdf97108ad7'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '6bb06ab56edd0a0c555fa6d19f1b4ed851f8e318050df1c531ce73e21bf4ff3c'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
