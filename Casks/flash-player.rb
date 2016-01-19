cask 'flash-player' do
  version '20.0.0.286'
  sha256 '3c361a4680cac2f63a5f26c9e77332eb5f69dcdee5298efdf576e09bc17f5967'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :gratis

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
