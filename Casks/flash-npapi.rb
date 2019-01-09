cask 'flash-npapi' do
  version '32.0.0.114'
  sha256 '96016eb1f2952c194d3f1c334137d48879b0cb1437e6c5525b0fd39274e8d4db'

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
