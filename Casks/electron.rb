cask 'electron' do
  version '1.2.0'
  sha256 '1ec63d384eaa3494bba8f3c18b9dc764b680764664749f8a1f3f2da6d8198fa4'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '0002ed6bec765224b555b4c1214eec1756a99aabcf9d49c430d19f5d433c0473'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
