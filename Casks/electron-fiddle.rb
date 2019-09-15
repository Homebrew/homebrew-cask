cask 'electron-fiddle' do
  version '0.10.0'
  sha256 'aa0c14e437b5910dd46b88d9369f7d1eca8ddb400b218ea0ea80e327aeef91d4'

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
