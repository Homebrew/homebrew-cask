cask :v1 => 'electron' do
  version '0.30.0'
  sha256 '8b938b421f365856f5424302112a4011353cf51e8729999b2408537b34936ec2'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '5e71d93c9684256a88370d55ec5bf1fd27143012fe1bf94a7d6289df64b8be3e'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
