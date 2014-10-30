class FlashPlayer < Cask
  version '15.0.0.189'
  sha256 'd164d1eb7075c2b25124cbbc8078272a4e08b78c15126588a67aa033889de63b'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
