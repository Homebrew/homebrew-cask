cask 'electron' do
  version '1.4.5'
  sha256 '39d45cb18bf639fadb2613af6750792b0f2e80531ea5455874e5494e7a1a7b83'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'ecf8e3716afb6ee1ff8005d18549fe8f2a516a5806fd520693a0d1d2c8bfd9e9'
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
