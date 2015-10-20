cask :v1 => 'electron' do
  version '0.34.0'
  sha256 '26eb1d5a522f574e1d7cd5297ef5fd9c5b98d92449ac94aa1bcff3e28f4ae259'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => 'b9b2ea3a952cf22c2daac1fc03a17c2c84107a275b109e5f80451bf4a366e665'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
