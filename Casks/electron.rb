cask 'electron' do
  version '1.8.3'
  sha256 '6bc4a85473ab447f2fc21226e18b17e25529ab7d9a14ff98dedbac0d370b7610'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '407d4c29612dfe0f7196a6288063689cbb09cd763255001aff23c2203d078a59'
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
