cask 'flash' do
  version '20.0.0.267'
  sha256 '4810d26cfe29b699ec1b6179024108e115ab78c04fc4addcd50f4db8e7bc7f83'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_#{version.to_i}_osx_pkg.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'
  license :gratis

  pkg 'Install Adobe Flash Player.pkg'

  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       :delete => [
                         '~/Library/Caches/Adobe/Flash Player',
                         '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
