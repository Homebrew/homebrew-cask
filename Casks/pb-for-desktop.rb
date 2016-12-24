cask 'pb-for-desktop' do
  version '2.9.8'
  sha256 'fcc2d41b328b665015c296217e255fa9d359e82bf5f77fac49175b3625178a7b'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: 'fae720705df7a0480687fcbb31f646093a7123ab63090cc83d2bb2c61fe9bae8'
  name 'PB for Desktop'
  homepage 'https://github.com/sidneys/pb-for-desktop'

  app 'PB for Desktop.app'

  zap delete: [
                '~/Library/Application Support/PB for Desktop',
                '~/Library/Caches/de.sidneys.pb-for-desktop',
                '~/Library/Logs/pb-for-desktop',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.plist',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist',
                '~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState',
              ]
end
