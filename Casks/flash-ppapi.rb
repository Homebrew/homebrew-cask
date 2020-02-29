cask 'flash-ppapi' do
  version '32.0.0.330'
  sha256 '6e9c37c916c69972fc9900d4882eff8db70971e41de6b3e0790faa0526263e56'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player PPAPI (plugin for Opera and Chromium)'
  homepage 'https://get.adobe.com/flashplayer/otherversions/'

  auto_updates true

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

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
