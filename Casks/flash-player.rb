cask :v1 => 'flash-player' do
  version '16.0.0.235'
  sha256 'df9820b39ade6bd530af4f5ab6fe2c95166d59f0d3b000bfd97c18f141b23294'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
