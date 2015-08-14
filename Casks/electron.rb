cask :v1 => 'electron' do
  version '0.30.4'
  sha256 '6cd4bba0759998a55b464c71976dd0c324a62bad4d8f7d2f994337edfeed48dc'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => 'c3cf579f5209c9993d9da7728e4c9b11053446c8bad772d827c3479d2c305d7b'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
