cask 'pepper-flash' do
  version '22.0.0.209'
  sha256 'fb7e4bff0720df19ba146d2ab65500584474c9ffee450c5f71ad9f89fcd2b66c'

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
