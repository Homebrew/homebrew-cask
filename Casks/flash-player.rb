cask 'flash-player' do
  version '27.0.0.159'
  sha256 '7569e61941bf423723842fc2d58cdd18b7bc63edfdabbd55ab3547a7832b0f0b'

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
