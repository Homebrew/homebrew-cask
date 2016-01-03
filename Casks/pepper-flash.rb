cask 'pepper-flash' do
  version '20.0.0.228'
  sha256 'c94600c9b85f5e96f21580ac8aaa4be2aa8511c18379d1cb488a3d813bcbcce1'

  url "https://admdownload.adobe.com/bin/live/AdobeFlashPlayer_#{version.to_i}ppau_a_install.dmg"
  name 'Adobe Pepper Flash Player'
  homepage 'https://get.adobe.com/flashplayer/otherversions'
  license :gratis

  installer :manual => 'Install Adobe Flash Player.app'

  uninstall :pkgutil => 'com.adobe.pkg.PepperFlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/PepperFlashPlayer.plugin'

  zap       :delete => [
                         '~/Library/Caches/Adobe/Flash Player',
                         '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
