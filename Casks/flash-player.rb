cask 'flash-player' do
  version '26.0.0.137'
  sha256 'd887970105f403d06b894ff3e791f53d3453fb2b44341d566ee7e3b9b7f87b9b'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'c17c3d3ba056fdf8caaab6e886d7a7dc7b5d57069df585d9fa2a009552ee61da'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap delete: [
                '~/Library/Caches/Adobe/Flash Player',
                '~/Library/Logs/FlashPlayerInstallManager.log',
              ]
end
