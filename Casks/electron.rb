cask :v1 => 'electron' do
  version '0.35.4'
  sha256 'fda7a9a6ec33a270a97fcab2d94b9dc31b4960786c01f0f63ba9fd4824d505de'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '4a58e0b982c6eb4c3b18e13a1c6ba55716bb424fd87ed50e4fa45785bb7fff62'
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
