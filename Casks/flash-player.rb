cask 'flash-player' do
  version '29.0.0.171'
  sha256 'b1e38e3d0e2a31a7facbcee16146aba63d0d18d24b9b755b9342f5d32366c9b4'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: 'a8b1088272513abecdf52195eed55c7e5247ec8bc82de741c3aa1060099220be'
  name 'Adobe Flash Player projector'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  app 'Flash Player.app'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
