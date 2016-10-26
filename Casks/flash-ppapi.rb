cask 'flash-ppapi' do
  version '23.0.0.205'
  sha256 '8e0b722751e37898201e329fe6caa75f2c40942d63bf6342e105b3ae1e2c1844'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: '26a40ba2c668486155b9a3bce042a5105d158ddc8a0266f13614e264727ec5c3'
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
