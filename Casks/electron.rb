cask :v1 => 'electron' do
  version '0.30.3'
  sha256 '735b40ceffddd66b4c189c3580a749de11e320c25cc5b8bfa3fd4c2bd8e2b59a'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '8635132d425621d6dd335f716fd0b579633f0e48e1bd073175fae59fd8c12da0'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
