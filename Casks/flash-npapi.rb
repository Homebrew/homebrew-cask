cask 'flash-npapi' do
  version '31.0.0.122'
  sha256 '3623841c45ff06fafc9709a87d5a63ff867e8d67251ad5c87f4cdb4940875346'

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml'
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
