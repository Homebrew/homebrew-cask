cask 'flash' do
  version '22.0.0.192'
  sha256 'ce1679526d5e5b6dce7b05c5115d0388b96f18e7972d990fb15b4979e6b6920a'

  # macromedia.com was verified as official when first introduced to the cask
  url "http://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'cd1cc6b42488cc6931c0554f41159f93a4b8383af4e72366610ee47f6b33b1ed'
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
