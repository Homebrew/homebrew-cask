cask :v1 => 'electron' do
  version '0.35.2'
  sha256 '9c2f44a77ab74a08db922cc02d736ba49741ecc24a190ca2eaa55600799454d6'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '573c9de75089c8d5aba87ce1d645899dd61ba8b1fb598381e9db4592f00e6b50'
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
