cask :v1 => 'electron' do
  version '0.25.3'
  sha256 '2dac585477611e819446901e0d3b45fe4fa44b3606fb7470149b6e5efac4b175'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  app 'Electron.app'
  homepage 'http://electron.atom.io/'
  license :mit

  postflight do
    system '/bin/ln', '-s', "#{staged_path}/Electron.app/Contents/MacOS/Electron", '/usr/local/bin/electron'
  end
end
