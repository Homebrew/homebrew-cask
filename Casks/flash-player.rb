cask 'flash-player' do
  version '31.0.0.148'
  sha256 'bb3d70cee69ff58ec42c18eb0f11de59d138616f23ad0dc6b3c532e43f03f4f7'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
