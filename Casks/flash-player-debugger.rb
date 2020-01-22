cask 'flash-player-debugger' do
  version '32.0.0.321'
  sha256 '824979f232a460b0f241d8e11875c1871afb001c54de6b4c44e24ea0d43f96fd'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player projector content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', target: 'Flash Player Debugger.app'

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
