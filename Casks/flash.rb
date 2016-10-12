cask 'flash' do
  version '23.0.0.185'
  sha256 '9a83d46938acd43236fa63c045a0d83ed6197e376b2d67abf43ac3cc4471e948'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '159582e9a7da281f6d866c000f4f2803c7306e89be44075e6793c142286077e5'
  name 'Adobe Flash Player'
  homepage 'https://get.adobe.com/flashplayer'

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
