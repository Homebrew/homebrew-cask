cask 'flash-player-debugger-npapi' do
  version '26.0.0.131'
  sha256 '06de7e403114ee09628a45050318eee81a1d2bebce231cf7801a25513b140cdb'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'cf9933c08cd57d3606059c3fc326e83616aa7bd9b4f5a6a0c01c6f2067ba56dc'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox) content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  pkg 'Install Adobe Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
