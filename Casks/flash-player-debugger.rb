cask :v1 => 'flash-player-debugger' do
  version '16.0.0.257'
  sha256 '58021dcb6a4eac30ecda625cbc6751f3ab95abe885f53700de6bd3234e65ba41'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa_debug.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', :target => 'Flash Player Debugger.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
