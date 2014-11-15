cask :v1 => 'flash' do
  version '15.0.0.223'
  sha256 'd5fd0973439a9250751930735508152cb8b9923fc4bf8c2501ca6750b9ca8623'

  url "http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_#{version.to_i}_osx_pkg.dmg"
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'
  license :unknown

  pkg 'Install Adobe Flash Player.pkg'

  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/Flash Player.plugin'
  zap       :delete => [
                        '~/Library/Caches/Adobe/Flash Player',
                        '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
