cask :v1 => 'electron' do
  version '0.31.1'
  sha256 '077cc0f65fa1f10d0a95d7e77ef04b322e74ba9e8be8e0b412a1fdbcf1b892d3'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '5a8521f3edf4d23919cc4d18fc81e1068c087b5eab05476168305acc3c4e9564'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
