cask 'pepper-flash' do
  version '20.0.0.228'
  sha256 'c8eb2fde34a1b886de9fe68b299ec85b0acf83012fce5d3cef0e5e6e351fcddd'

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
