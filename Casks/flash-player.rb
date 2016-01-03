cask 'flash-player' do
  version '20.0.0.267'
  sha256 '8c8e3dcd01668c4d59850b52e6add1d09658aa01754e5e363422fe526387bbf0'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :gratis

  app 'Flash Player.app'

  zap :delete => [
                   '~/Library/Caches/Adobe/Flash Player',
                   '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
