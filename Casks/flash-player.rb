cask 'flash-player' do
  version '25.0.0.163'
  sha256 'fdf6971ccb1b2662ad07e41b870b55b139a50e6350c639ef1568d2b42e14328f'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'f9cdc3e74103ce8f2bf46664475ec4ab55be96fe3bd71cc5b9a31d052ecb9eca'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
