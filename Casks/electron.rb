cask 'electron' do
  version '1.4.7'
  sha256 'b57397ed14a694e94bb1db3e4a76b7873ad32a3053bf89f9859af7034d045185'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'e08b321177ea2f5f257710bd3f8ce3f42b00ecba7a028c5589ae0b2719525579'
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
