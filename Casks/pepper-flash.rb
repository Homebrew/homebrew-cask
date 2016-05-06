cask 'pepper-flash' do
  version '20.0.0.228'
  sha256 '9b8c679f3eb66eb4ecf01453e440e4ca9ba81fe6b62b8fe9a59d89eaa7d9277e'

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
