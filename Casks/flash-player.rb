cask 'flash-player' do
  version '21.0.0.213'
  sha256 '2e38b875ca7efbca191945f202b8f2d73fdd9c2231c8969ab9b7e04f28ae4f1c'

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
