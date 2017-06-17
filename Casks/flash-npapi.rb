cask 'flash-npapi' do
  version '26.0.0.131'
  sha256 '4edabd847421480096ba13239aceefbdead8db84fc7e701a8caa5b986ec54737'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'cf9933c08cd57d3606059c3fc326e83616aa7bd9b4f5a6a0c01c6f2067ba56dc'
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
