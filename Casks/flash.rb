cask :v1 => 'flash' do
  version '16.0.0.235'
  sha256 'd47bdc510f35e35ecf5260e35f6c86a4750f95b8505841bc10e1b6a1af82d346'

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
