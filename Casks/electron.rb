cask :v1 => 'electron' do
  version '0.35.0'
  sha256 '7ef9be84f464b32db6602fc187ee4cdf9f2d1af1bb5df84646a1526cf34f958a'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '7b76ea4d7bdef5fc980632b829f8cfd8e81c96dec755ccb1ca1416d9ba6c89ea'
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
