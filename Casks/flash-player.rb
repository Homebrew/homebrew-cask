cask :v1 => 'flash-player' do
  version '17.0.0.188'
  sha256 '698c577af0c3e496e0f36a8faf599ccc1c20c8dd0953a1ed4a43e4cd8b26abc2'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :gratis
  tags :vendor => 'Adobe'

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
