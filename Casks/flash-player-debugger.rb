cask 'flash-player-debugger' do
  version '24.0.0.194'
  sha256 'd36a398deb1d0c44ba497ff0517bbf9ed7b02c6814cd8d3c8166282403166cea'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: '25a5c623a510f8458e8f901ad1d9b62ac6d78cfe91cf231223ef8e48629e3a2b'
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
