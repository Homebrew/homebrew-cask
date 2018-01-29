cask 'electron' do
  version '1.7.11'
  sha256 '79d92f046567fa3224bc2ae1e4406839a9559fc90ec77aa657009dab12586ea6'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '3e385e16aa46e9be74a90add616939965f99f83f43e6d9b703bf5c31f2361489'
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
