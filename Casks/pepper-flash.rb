cask 'pepper-flash' do
  version '22.0.0.209'
  sha256 '7b6caa64e9701e6b8207222f7a455424d71add4308b7bcbf20f58f70159eece9'

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
