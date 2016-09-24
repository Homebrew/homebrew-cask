cask 'pepper-flash' do
  version '23.0.0.162'
  sha256 'b39be30d0cdf587f6c05f9d3c67933106e63b10858ee1a2e05df2944ee25344a'

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
