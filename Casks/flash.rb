cask 'flash' do
  version '22.0.0.209'
  sha256 'ec1e880e0546d8cbfe7e585c02758387a555f0d04c2a09fff83f6c8a799a1354'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '54401f2d7472607f78e82281850b6285d7c711865009bc717e21bb4611b5fe3f'
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
