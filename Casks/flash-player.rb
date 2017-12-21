cask 'flash-player' do
  version '28.0.0.126'
  sha256 '7b1cb7a44539a8a4ad2fceab43db5d98803e14a5dcd641e4ad7f3a3769e6b615'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '6674b9b037cf5dbd0dd77b4e34b88c7b1c9113091d2911daa87b1fdd0163369b'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
