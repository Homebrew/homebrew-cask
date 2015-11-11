cask :v1 => 'electron' do
  version '0.34.3'
  sha256 '72ef8a0dc70ecb3119691c7ec332f51eb7db5d6e4be774ce74cd30323a0e5b63'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '406774cdb85a5a87962b506ff518facb8aa39b6b7382ed81d75286492a778014'
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
