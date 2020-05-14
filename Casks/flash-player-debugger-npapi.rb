cask 'flash-player-debugger-npapi' do
  version '32.0.0.371'
  sha256 '73614e8f2493e8e5835ec1a2fe2e3e21c73c4355ec0382c470c64079086effa2'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox) content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  pkg 'Install Adobe Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg'

  uninstall pkgutil:   'com.adobe.pkg.FlashPlayer',
            launchctl: 'com.adobe.fpsaud',
            delete:    [
                         '/Library/Application Support/Adobe/Flash Player Install Manager',
                         '/Library/Internet Plug-Ins/Flash Player.plugin',
                       ]

  zap trash: [
               '/Library/Internet Plug-Ins/flashplayer.xpt',
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
               '~/Library/Preferences/Macromedia/Flash Player',
               '~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState',
             ]
end
