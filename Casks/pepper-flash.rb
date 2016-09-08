cask 'pepper-flash' do
  version '22.0.0.209'
  sha256 '43b710ebab65c9a3592427ab5f9a9b3d55544be8958c6d138a381c9d24b16655'

  url "https://admdownload.adobe.com/bin/live/AdobeFlashPlayer_#{version.major}ppau_a_install.dmg"
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
