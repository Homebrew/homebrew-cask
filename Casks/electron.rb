cask 'electron' do
  version '1.4.6'
  sha256 '738fd6c9f7b274ffc92b634f518f9bd7d06d26dfec5dc4fb0d8de236fef2559c'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'b2d34af98fa037e07e5849d683a54eb7fbd72cb51d035275994edac783495b0a'
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
