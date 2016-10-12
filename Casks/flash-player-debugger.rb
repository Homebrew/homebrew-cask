cask 'flash-player-debugger' do
  version '23.0.0.185'
  sha256 '2d0faacfa637eef76c9c78f2b250e01f5f3d29cb4d09ea3bd493c0f70e3b9102'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '159582e9a7da281f6d866c000f4f2803c7306e89be44075e6793c142286077e5'
  name 'Adobe Flash Player Debugger'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
