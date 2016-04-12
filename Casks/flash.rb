cask 'flash' do
  version '21.0.0.213'
  sha256 '12c96c3133e1a214ae8a1c7a3a88982ae670517ba1f1c5bed94c5dedfa2b3c09'

  # macromedia.com was verified as official when first introduced to the cask
  url "http://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '32a4cb768f58a0ef3b080ca467ef06046eeead4b3d122e8e57646d1fef6829cf'
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
