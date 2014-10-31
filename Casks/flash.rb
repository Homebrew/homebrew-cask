class Flash < Cask
  version '15.0.0.189'
  sha256 'e9fba4902df0abaa6054c7e4572841abf25564de6ffdf6d30416fb7e3f30ab27'

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
