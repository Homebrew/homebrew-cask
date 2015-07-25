cask :v1 => 'pepper-flash' do
  version '18.0.0.209'
  sha256 '30dcff90be556e5a8e7acbd762465bf924d451b3a9ff3ea4ab15254d17da4728'

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
