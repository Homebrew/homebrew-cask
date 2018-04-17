cask 'flash-player' do
  version '29.0.0.140'
  sha256 'fb4cff72296eaa95c3b9363a74765413391ac2b51b2559705d73832f3e2b39ed'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '53e0fa18b84d4d4c486059974a4d51e0cc9cef5b44f71ac6fe1f2e5b34aac950'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
