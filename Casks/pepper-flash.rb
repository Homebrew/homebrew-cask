cask 'pepper-flash' do
  version '23.0.0.162'
  sha256 'b1c468b9f523e1b267115ad75e1074d89528b199bc9d21101d8b5be8fb13450c'

  url "http://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pep.xml',
          checkpoint: 'e6bf656907bdee3e843e649f97de873aac9aa18e19d87c111d7fb658037c4047'
  name 'Adobe Pepper Flash Player'
  homepage 'https://get.adobe.com/flashplayer/otherversions'
  license :gratis

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
