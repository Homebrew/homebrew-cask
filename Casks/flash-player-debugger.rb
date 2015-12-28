cask 'flash-player-debugger' do
  version '20.0.0.228'
  sha256 '2ae355fefb3b5db5557e52d01d305216cc3c5ddf479f72045390016738d59ee7'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa_debug.dmg"
  name 'Adobe Flash Player Debugger'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :gratis

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', :target => 'Flash Player Debugger.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
