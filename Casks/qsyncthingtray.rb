cask 'qsyncthingtray' do
  version '0.4.7'
  sha256 '274f411f79e17df4ebecbc5ff280df497751199714f5668a3bd4d2198adac57f'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: 'ce79e448c25bae30620a3104eaf88b8be7b1ed06df779ceb6b62f017226c0e34'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
