cask :v1 => 'electron' do
  version '0.30.1'
  sha256 '1246f80cc1dc46901fcf6a21bd51489202a6e5c6ba3a95e9fde50175f5f95975'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '3bbe80eb7e86ae4e7361f3e280fc392b10cb998af6d3511472723c6153711885'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
