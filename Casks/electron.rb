cask 'electron' do
  version '0.37.3'
  sha256 '455e7514d32c2ea409e2da86005a990f442a274bf9191d9b367b306da434063b'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'dd2a617d909e40ab8e8475ea71afc7bd68eb69325941190d6db8d52fafb546fe'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
