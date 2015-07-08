cask :v1 => 'electron' do
  version '0.29.2'
  sha256 'a15a636a03965c63f522f4129523e2acbfb027547905706f704a68a6647ec248'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '438dede832f397b75c417922be95f2793a870d779a7117938b05bf289ef173e3'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
