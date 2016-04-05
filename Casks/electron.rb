cask 'electron' do
  version '0.37.4'
  sha256 '492405a25b8471c71b8994b68e96a8a47e8b3421688affdb24de6449c91f316e'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '9b2b977016fd0b739b70b716bab8bbde5b56b6f5a925e1b99570f9a992eb91b1'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
