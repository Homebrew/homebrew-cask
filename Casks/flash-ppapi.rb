cask 'flash-ppapi' do
  version '29.0.0.140'
  sha256 'bc428ec42ac959e498a6a65d37ab148b9c75311662d3494196fdde85373a0e29'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: 'a617234c8f9b680bc5d5f4ac249faf8d23cfc43f9d171a7665405b4a26f2c502'
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
