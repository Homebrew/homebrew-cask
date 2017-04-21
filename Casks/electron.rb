cask 'electron' do
  version '1.3.15'
  sha256 '660d01eeaef9c13dd47bd756b593a91eb6083163bb63c0a9eba7405dd7ebb341'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '20ea3d80c0e90e9981fa0f8b15ffaac3d8a7b6328c8475139242435d9cc5098d'
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
