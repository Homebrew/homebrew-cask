cask 'electron-fiddle' do
  version '0.1.0'
  sha256 'f9294dba9c60e3da8df784b03c67a7956ae0efbd0b2533484aaebf6de6561cc4'

  # github.com/electron/fiddle was verified as official when first introduced to the cask
  url "https://github.com/electron/fiddle/releases/download/#{version.major_minor}/electron-fiddle-#{version}-mac.zip"
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
