cask :v1 => 'flash' do
  version '17.0.0.188'
  sha256 'bf03faffb92f3941d9cf671bbbca59189830c6022a8596e0e6fd529b736cf2bc'

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
