cask :v1 => 'flash' do
  version '16.0.0.235'
  sha256 'f7bd90f9ee7520195cb02c0bf7803b4b30da48e64da040cd7d84d638aa000102'

  url "http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_#{version.to_i}_osx_pkg.dmg"
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Install Adobe Flash Player.pkg'

  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/Flash Player.plugin'
  zap       :delete => [
                        '~/Library/Caches/Adobe/Flash Player',
                        '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
