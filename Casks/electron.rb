cask 'electron' do
  version '1.4.12'
  sha256 '0c8fc825997329bcb9b8bfbefdc65c9fb2ba22287967dae3b862f65b204a6506'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '864a383a5393d3bcf59299cb4f786519fbfc9928779a34eabd6d9df8237dec88'
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
