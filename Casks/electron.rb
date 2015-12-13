cask :v1 => 'electron' do
  version '0.36.0'
  sha256 '79c59ae51ed4242a490b1c4cf832e3795808eb1b4afd8a3dfa6e612d96952894'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => 'fcaa47ae003cc0ed8e7e327b96f85201f85a5c2f2d116b1caf7a928148e6395e'
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
