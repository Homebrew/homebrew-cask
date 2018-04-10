cask 'flash-npapi' do
  version '29.0.0.140'
  sha256 '173d1201269371761460f36656edf92c23b90d1b21389c2b288c47be093951ae'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.adobe.com/get/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '53e0fa18b84d4d4c486059974a4d51e0cc9cef5b44f71ac6fe1f2e5b34aac950'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox)'
  homepage 'https://get.adobe.com/flashplayer/'

  auto_updates true

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil:   'com.adobe.pkg.FlashPlayer',
            launchctl: 'com.adobe.fpsaud',
            delete:    '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
               '/Library/Internet Plug-Ins/flashplayer.xpt',
             ]
end
