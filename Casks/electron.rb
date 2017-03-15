cask 'electron' do
  version '1.3.14'
  sha256 '552412de7d1a0d1aa130a170306b803c00bdbbd48dcf928dc4d2de125e530ce7'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'b120faaa6253cee9b7ed811723ad61f3ecdb2ddba69db935e3330aa1b67721b4'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
