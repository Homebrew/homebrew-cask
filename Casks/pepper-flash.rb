cask 'pepper-flash' do
  version '21.0.0.242'
  sha256 'b3d41a17d33a7e98dc35a45ce2f518769c7673c19882a435a945016548a41c59'

  url "https://admdownload.adobe.com/bin/live/AdobeFlashPlayer_#{version.to_i}ppau_a_install.dmg"
  name 'Adobe Pepper Flash Player'
  homepage 'https://get.adobe.com/flashplayer/otherversions'
  license :gratis

  installer manual: 'Install Adobe Flash Player.app'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
