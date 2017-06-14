cask 'flash-npapi' do
  version '26.0.0.126'
  sha256 'f16b3d59a8c45742f48d1a7eb9d9abbc97538e1047dab264abcfc80041f4b471'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '788a4e4eaa4bda842e2890baafd3e6d176ebc53eaf42255ec18808d5fb601594'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox)'
  homepage 'https://get.adobe.com/flashplayer/'

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                      '/Library/Internet Plug-Ins/flashplayer.xpt',
                    ]
end
