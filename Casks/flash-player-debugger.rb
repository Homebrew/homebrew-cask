cask 'flash-player-debugger' do
  version '27.0.0.170'
  sha256 '80011462b51969925a5999e1ce538e1315ad05b3a66a767b1aafe1a5939e8aeb'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: 'dc42e381042fe881263b4462e00b306254e6defcc1faa54978364e2c8c14d182'
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
