cask :v1 => 'electron' do
  version '0.34.2'
  sha256 '7633cec22054d1fffafb92aa3090b5afbc7e58222837a1a0f179c3c1189fa60f'

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
