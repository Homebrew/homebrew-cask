cask 'electron-fiddle' do
  version '0.7.0'
  sha256 '6b6d8ff00c46e20f192152508e159c783b9ce95b62ed8ebfcbfa201b19f68214'

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
