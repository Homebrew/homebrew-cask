cask 'electron' do
  version '1.4.3'
  sha256 '7bbd9260e499dc8acdc7f6056693ba6785d54778166f1ead93d339ea58c6eeaf'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '40af55bc4cc58b48ab71fd46d5f17d6b09ec2078df3a77137ee6ccc7432db487'
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
