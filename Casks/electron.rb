cask 'electron' do
  version '1.6.8'
  sha256 '40fb4f098321f1a1988d379e4a617df59513ad8e6faa9a3c741a6934f8366ee4'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'c041c996a5aa2f0504817aee7b6f5b61c4f528113e7715e904502cc82806f65b'
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
