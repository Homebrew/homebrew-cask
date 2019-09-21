cask 'flash-player-debugger' do
  version '32.0.0.255'
  sha256 'eb8a0cbf13ac049c422f14a078ca9f97120a8b17dabb74280b1211805bd6bf8c'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
