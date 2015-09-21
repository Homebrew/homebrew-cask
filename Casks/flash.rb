cask :v1 => 'flash' do
  version '19.0.0.185'
  sha256 '278fcb94ab182dfcffb8d4abbaa2007b8c068be6220aacf4929ef1892026ea1b'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_#{version.to_i}_osx_pkg.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'
  license :gratis
  tags :vendor => 'Adobe'

  pkg 'Install Adobe Flash Player.pkg'

  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/Flash Player.plugin'
  zap       :delete => [
                        '~/Library/Caches/Adobe/Flash Player',
                        '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
