cask 'flash-player' do
  version '25.0.0.163'
  sha256 '2ceeb89cf6c52802d7adb2af01dc73ca68c343280ce4563f4f19af755c132940'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '37d060409d160f996740ff19f376f78997fe743290fe7b055c67cfc6817ccc6d'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
