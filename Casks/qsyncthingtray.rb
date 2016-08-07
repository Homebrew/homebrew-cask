cask 'qsyncthingtray' do
  version '0.5.1r2'
  sha256 'e7c49115bb129fb2c9aa4a8c08e77eb245a33e0633fe7a7834db7acd548dc4d4'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: '131715fe773e8682964efd5090f397df0050d7e45756dcbd4799db16bf0c9d74'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
