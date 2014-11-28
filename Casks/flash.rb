cask :v1 => 'flash' do
  version '15.0.0.239'
  sha256 '6c0a22ad48df4960e240fc08f4913eb24775eca42e99dc3cc9a441bf1ea3e68a'

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
