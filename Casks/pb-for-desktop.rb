cask 'pb-for-desktop' do
  version '5.9.1'
  sha256 '22f2c1fd00e543957f9845c8c0be1973d34484416f86111411cba60e3a7ea1e0'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: '7982f2908ae0bf36b2c4b7b62bc1108af43144203ef6fedbaf87cce32cd6492b'
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
