cask :v1 => 'electron' do
  version '0.31.2'
  sha256 'a5b038b620fd7283117331df6b79f00c1ab3b00fb5f6bf512507b8f67c1de811'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '9a38469e121d1aa609af139b7f756291536eb4a8e1a0aeb0cab984f3cac9d9d3'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
