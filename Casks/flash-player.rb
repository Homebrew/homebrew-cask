cask 'flash-player' do
  version '24.0.0.194'
  sha256 '046142360fd0f528af0a6355428a00466f8e5f1ebb1ed2110a2b3f1730ca2b7b'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'f621c439083bbb6bb5857e26c0d5e5c6b01a616617144f4c2ddf598c1ea6083b'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
