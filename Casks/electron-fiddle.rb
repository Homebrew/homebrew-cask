cask 'electron-fiddle' do
  version '0.2.0'
  sha256 'ba8fd554c615a9867f4144922b1d9e5df515b1586f82efc8cbd1aa6ce5508aec'

  # github.com/electron/fiddle was verified as official when first introduced to the cask
  url "https://github.com/electron/fiddle/releases/download/v#{version}/electron-fiddle-#{version}-mac.zip"
  appcast 'https://github.com/electron/fiddle/releases.atom'
  name 'Electron Fiddle'
  homepage 'https://electron.atom.io/'

  app 'Electron Fiddle.app'

  zap trash: [
               '~/Library/Application Support/Electron Fiddle',
               '~/Library/Caches/com.electron.fiddle*',
               '~/Library/Preferences/com.electron.fiddle*.plist',
             ]
end
