cask :v1 => 'pepper-flash' do
  version '17.0.0.188'
  sha256 '34ba6a0b2986c201e739ab7c1d5da5ff6ccf98ee6523905e3ef2a7e44e75b88c'

  url "https://admdownload.adobe.com/bin/live/AdobeFlashPlayer_#{version.to_i}ppau_a_install.dmg"
  name 'Pepper Flash Player'
  homepage 'http://get.adobe.com/flashplayer/otherversions'
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
