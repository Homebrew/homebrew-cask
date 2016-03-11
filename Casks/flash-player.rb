cask 'flash-player' do
  version '21.0.0.182'
  sha256 'c1510ecd43de64a6ad790fa2339d9c468b7441dd43663beab5c2873888a89038'

  # macromedia.com was verified as official when first introduced to the cask
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
