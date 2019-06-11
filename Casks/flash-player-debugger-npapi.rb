cask 'flash-player-debugger-npapi' do
  version '32.0.0.207'
  sha256 'e2ce64798055b721f95d3c1db7664d17fb02fc3585ffe3a12ef6e0939e111add'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox) content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  pkg 'Install Adobe Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
