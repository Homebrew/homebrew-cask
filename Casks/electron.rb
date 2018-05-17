cask 'electron' do
  version '2.0.1'
  sha256 '93037deeb1f0c4fe90913e8c4360c323badfc223d9c00d8a4e28dc9a474c60d2'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '031a661733ceb4f9ee013e8eddb97dfd346e42f5c04a7af93db8089c7bc98f3a'
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
