cask 'flash-player-debugger-ppapi' do
  version '31.0.0.153'
  sha256 '0d5180d7cc5fb6cffde04e0c6cbbef5281d3872be391bd47bf42a2744eb95c36'

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_ppapi_debug.dmg"
  appcast 'https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml'
  name 'Adobe Flash Player PPAPI (plugin for Opera and chromium) content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  pkg 'Install Adobe Pepper Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap trash: [
               '~/Library/Caches/Adobe/Flash Player',
               '~/Library/Logs/FlashPlayerInstallManager.log',
             ]
end
