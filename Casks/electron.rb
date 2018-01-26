cask 'electron' do
  version '1.7.10'
  sha256 '28b7c07f6187ca7126544ba1b382cceb86dea69af3d716b3e31e02fdbf5fd7ee'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '49ffe26f254d3ce5fe8d002a6c4583dd5bb578730b184342d3d88e1065568124'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap trash: [
               '~/Library/Application Support/Electron',
               '~/Library/Caches/Electron',
               '~/Library/Preferences/com.github.electron.helper.plist',
               '~/Library/Preferences/com.github.electron.plist',
             ]
end
