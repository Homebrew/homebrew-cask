cask 'electron' do
  version '0.36.1'
  sha256 'fa1df6d97ce652bd39408c33b357bdfd4bedbe2f1c67b648d8320a759e2c7009'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '66857ae7933e479b261ac80bf26c182c8c3de06826395fdbcfe40797c319d0c7'
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
