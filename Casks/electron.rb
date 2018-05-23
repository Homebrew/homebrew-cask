cask 'electron' do
  version '2.0.2'
  sha256 'e8fccb20e4562ef0fc8d035f9d1348da849499027fa2d8d3e5e16e84f1b8ae58'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '2cc6c05bdcffe1c832a7e201676fbc45b8d23b1aadfed89b5c56a68e4648a195'
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
