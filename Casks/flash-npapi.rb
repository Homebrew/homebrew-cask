cask 'flash-npapi' do
  version '27.0.0.170'
  sha256 '86cc201f1b7558ac378f6a5da18f6b3d49718f45bd9904df315b81419f2425c8'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'dc42e381042fe881263b4462e00b306254e6defcc1faa54978364e2c8c14d182'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox)'
  homepage 'https://get.adobe.com/flashplayer/'

  auto_updates true

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                      '/Library/Internet Plug-Ins/flashplayer.xpt',
                    ]
end
