cask 'electron' do
  version '1.4.11'
  sha256 'bfd71f84e2fb2cda7cdaba868d06c34e608216ebb4a971bd973483e64baa5d80'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '6951b7662cb614db9b442c81235a3e05e57160bee884bc3ba039763e562e6d28'
  name 'Electron'
  homepage 'http://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
