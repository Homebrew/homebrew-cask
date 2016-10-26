cask 'flash-player' do
  version '23.0.0.205'
  sha256 '446bce8361362e87bdd9f3d4befb76a5a865c236412e8b755481962540077cdb'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '26a40ba2c668486155b9a3bce042a5105d158ddc8a0266f13614e264727ec5c3'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
