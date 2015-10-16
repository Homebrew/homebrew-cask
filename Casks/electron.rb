cask :v1 => 'electron' do
  version '0.33.7'
  sha256 'b2d53a66079df07c520f2c457bd7b720d38632d6af4b5f3512c69e1089f9eeb6'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '05227e619011ae07511078d304fb03adc2d2077cce65c141fd5b51bb08879d3c'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
