cask 'electron' do
  version '1.2.1'
  sha256 '0527d6a4218fb5ef2f6555e84ac458d13d40bdc071f9d8a00546434359f2165f'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'a95a384ab00b00a10085153618b966e400f3225988f748fd2a4636a812f2ad29'
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
