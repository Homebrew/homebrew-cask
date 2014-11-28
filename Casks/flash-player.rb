cask :v1 => 'flash-player' do
  version '15.0.0.239'
  sha256 '496a608e363a4945c59b7790c5badc1b89d600b9321bb5bfbdc620accbf5811b'

  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.to_i}/flashplayer_#{version.to_i}_sa.dmg"
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  license :unknown

  app 'Flash Player.app'

  zap :delete => [
                  '~/Library/Caches/Adobe/Flash Player',
                  '~/Library/Logs/FlashPlayerInstallManager.log',
                 ]
end
