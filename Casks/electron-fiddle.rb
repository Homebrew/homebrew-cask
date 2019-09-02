cask 'electron-fiddle' do
  version '0.9.0'
  sha256 '99d02565aaa435233d0df1d5b9c6faaa65ec444572ba092b04ff8ad6c556e13e'

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
