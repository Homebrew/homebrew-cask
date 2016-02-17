cask 'flash' do
  version '20.0.0.306'
  sha256 'f95046ed8511401a50dfe5aadfc595769afdbed2c4db3aeb8ff7eabdc9c01452'

  # macromedia.com was verified as official when first introduced to the cask
  url "http://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '9c7d9c10851469f828383e7731544889632f3d106ade3fc2d1771d43f9af21c7'
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
