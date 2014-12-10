cask :v1 => 'flash-player-debugger' do
  version '14.0.0.176'
  sha256 '4ea23e909aa54c130de0d7a6453409207d303523cce15c4621ad4a55e0681fcf'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa_debug.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown    # todo: improve this machine-generated value

  # Renamed to avoid conflict with flash-player.
  app 'Flash Player.app', :target => 'Flash Player Debugger.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
