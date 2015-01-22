cask :v1 => 'flash-player' do
  version '16.0.0.287'
  sha256 'beecdce5382ea5cf27ecfedbef82917e8abe58cc19e146d447d679cfd7cb7c28'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Adobe'

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
