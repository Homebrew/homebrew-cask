cask :v1 => 'flash-player-debugger' do
  version '18.0.0.160'
  sha256 'bb5804672538b154d75e2b519f3f45e32f5eb183886ab93154b2081a6dc9f3a5'

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
