cask :v1 => 'pepper-flash' do
  version '18.0.0.209'
  sha256 '55fc94580f301fb51d75b5fa1121a83c4a2b3c2a6c5b81c3ea640f777eb27945'

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
