cask 'pb-for-desktop' do
  version '5.9.2'
  sha256 '8595fcf2ab9c54294497cf519108c404ef740e1c0cd33eb4526a96cbbb3e0b79'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: '099e02b40c59ae3f221a662a76637cfb2eb6ae42318c4e4c3c00170cb9bdbaf0'
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
