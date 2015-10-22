cask :v1 => 'pepper-flash' do
  version '19.0.0.226'
  sha256 '735354dead04382629c39d2d6fd6e860631f13055e6746a515b20c3cd9774f91'

  url "https://admdownload.adobe.com/bin/live/AdobeFlashPlayer_#{version.to_i}ppau_a_install.dmg"
  name 'Pepper Flash Player'
  homepage 'https://get.adobe.com/flashplayer/otherversions'
  license :gratis
  tags :vendor => 'Adobe'

  installer :manual => 'Install Adobe Flash Player.app'

  uninstall :pkgutil => 'com.adobe.pkg.PepperFlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/PepperFlashPlayer.plugin'
  zap       :delete => [
                        '~/Library/Caches/Adobe/Flash Player',
                        '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
