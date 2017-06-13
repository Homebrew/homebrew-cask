cask 'flash-ppapi' do
  version '26.0.0.126'
  sha256 '9209325aae141e32e3aa075a8ede4b0b680620719dcd0de858d95cee805be702'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: '788a4e4eaa4bda842e2890baafd3e6d176ebc53eaf42255ec18808d5fb601594'
  name 'Adobe Flash Player PPAPI (plugin for Opera and Chromium)'
  homepage 'https://get.adobe.com/flashplayer/otherversions/'

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
