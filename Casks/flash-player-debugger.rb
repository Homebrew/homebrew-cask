cask :v1 => 'flash-player-debugger' do
  version '16.0.0.287'
  sha256 '025f208c1a28ad4159c61b825713edf41e0bdfa87e7bb843109aa614d39577cb'

  # macromedia.com is the official download host per the vendor homepage
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
