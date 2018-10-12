cask 'flash-player-debugger-npapi' do
  version '31.0.0.122'
  sha256 '37f55c7803e3f21fbbcf29d6021eb8dfc58875deccc2919b27bbcc4a4326037b'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml'
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
