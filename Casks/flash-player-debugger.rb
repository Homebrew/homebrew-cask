cask 'flash-player-debugger' do
  version '29.0.0.113'
  sha256 '806f9fb770a1c519ab7e3f5a4fbfb17225cfae13ddb28db77b1d4afa84ea7e51'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: 'a617234c8f9b680bc5d5f4ac249faf8d23cfc43f9d171a7665405b4a26f2c502'
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
