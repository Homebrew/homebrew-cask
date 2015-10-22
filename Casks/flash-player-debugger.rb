cask :v1 => 'flash-player-debugger' do
  version '19.0.0.226'
  sha256 '75c8676df88e59f71c39913320a9ef0fd0a1d80415b2a1306c718d87a40ca26e'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa_debug.dmg"
  name 'Adobe Flash Player Debugger'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :gratis
  tags :vendor => 'Adobe'

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', :target => 'Flash Player Debugger.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
