cask 'electron' do
  version '2.0.0'
  sha256 'a6bfdd5756af2b50ecf240d7fb5ef5b86c59bb7cd118d33bfe42ced48a90591c'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'b363d4a451ff0693c2550bf0a8239ec7a5a691625f753657662173bcee5a63bc'
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
