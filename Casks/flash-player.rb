cask :v1 => 'flash-player' do
  version '15.0.0.223'
  sha256 '91d21b45f3a5639b89029b1cf07bf9e3bc424255a62ed62d5180ea7e0ad107f0'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
