cask 'electron-fiddle' do
  version '0.13.1'
  sha256 'a5e81613379d900af275bd57f34b45dc860335a6a5bf5a812647c745fd70a52c'

  # github.com/electron/fiddle was verified as official when first introduced to the cask
  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip"
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
