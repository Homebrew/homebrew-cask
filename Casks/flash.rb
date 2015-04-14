cask :v1 => 'flash' do
  version '17.0.0.169'
  sha256 'fc566ceb1eff75790c6d5b5755a926c25cb1e354ba29ead48903f378c2be661f'

  # macromedia.com is the official download host per the vendor homepage
  url "http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_#{version.to_i}_osx_pkg.dmg"
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
