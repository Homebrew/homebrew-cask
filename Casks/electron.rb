cask 'electron' do
  version '0.36.3'
  sha256 'cffd1c3244c4ba364d8f9e7dab28b24b08bce180ec3b892bee2de48e597bb09f'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '2e1f3118b7fca3ab3cb8a73455c9eaac99472de410b4797fb7776ed7f7f0885c'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'

  caveats <<-EOS.undent
    Starting #{token} applications with the symlink (e.g. from the terminal)
    will cause the app not to accept user input, use the full path instead
  EOS
end
