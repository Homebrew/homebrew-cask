cask 'flash-npapi' do
  version '23.0.0.205'
  sha256 'a0f470afdd1020dde677ca249cb117b31258b6687a6f8a175e423d480dccb742'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '26a40ba2c668486155b9a3bce042a5105d158ddc8a0266f13614e264727ec5c3'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox)'
  homepage 'https://get.adobe.com/flashplayer'

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
