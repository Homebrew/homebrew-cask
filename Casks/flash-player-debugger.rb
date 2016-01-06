cask 'flash-player-debugger' do
  version '20.0.0.267'
  sha256 '4731aedb3f7aef49de5835b5c4890d5bfbf19e38a1ba168ca066e069b35367ea'

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
