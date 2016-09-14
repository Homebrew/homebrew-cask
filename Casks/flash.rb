cask 'flash' do
  version '23.0.0.162'
  sha256 'f4c10d33c13fcee3f9c9cd2c742743c92269474f90f98bf47dff367932517e67'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'e6bf656907bdee3e843e649f97de873aac9aa18e19d87c111d7fb658037c4047'
  name 'Adobe Flash Player'
  homepage 'https://get.adobe.com/flashplayer'
  license :gratis

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
