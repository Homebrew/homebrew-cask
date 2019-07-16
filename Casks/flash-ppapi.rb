cask 'flash-ppapi' do
  version '32.0.0.223'
  sha256 'b886fdd24d051c4e3c53fb4c1d14b9febabb34cacfe73624b36c2fc85be2828c'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml',
          configuration: version.tr('.', ',')
  name 'Adobe Flash Player PPAPI (plugin for Opera and Chromium)'
  homepage 'https://get.adobe.com/flashplayer/otherversions/'

  auto_updates true

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil:   'com.adobe.pkg.PepperFlashPlayer',
            launchctl: 'com.adobe.fpsaud',
            delete:    '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
