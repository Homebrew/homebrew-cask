cask 'flash-player' do
  version '27.0.0.187'
  sha256 'aa8aa414c38a205f20254b6a61e193592bc45a1f4ffbe04455c8bb6182a832a6'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '26279ca81dea1717dec4c2d638ee46a14c9caa731f6bd2bc9ac35380bdef0ec9'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
