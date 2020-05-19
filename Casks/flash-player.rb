cask 'flash-player' do
  version '32.0.0.371'
  sha256 'beb33ae0bcca5ba50248c8553a957bd87ae54e1bc3e63a8b0747ae5b4f04a030'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  uninstall pkgutil:   'com.adobe.pkg.PepperFlashPlayer',
            launchctl: 'com.adobe.fpsaud',
            delete:    [
                         '/Library/Application Support/Adobe/Flash Player Install Manager',
                         '/Library/Internet Plug-Ins/PepperFlashPlayer',
                       ]

  zap trash: [
               '/Library/Internet Plug-Ins/flashplayer.xpt',
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
               '~/Library/Preferences/Macromedia/Flash Player',
               '~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState',
             ]
end
