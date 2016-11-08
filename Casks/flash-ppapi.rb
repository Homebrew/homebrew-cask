cask 'flash-ppapi' do
  version '23.0.0.207'
  sha256 '9297883bb01e4fa254114b3d866025198a4b302f14c7eba248e9b3cf5ccff90e'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: '50c4e19caa48710cf812e1549e5179124552b4bf760dc9aa719e09dd86d10fbe'
  name 'Adobe Flash Player PPAPI (plugin for Opera and Chromium)'
  homepage 'https://get.adobe.com/flashplayer/otherversions'

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
