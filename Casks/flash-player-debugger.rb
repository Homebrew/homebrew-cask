cask 'flash-player-debugger' do
  version '30.0.0.154'
  sha256 'dc446f82850813773f6bc219b1e6a9e9785a0372637d22fd3943593f63504e68'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml'
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
