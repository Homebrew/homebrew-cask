cask "flash-player-debugger-npapi" do
  version "32.0.0.387"
  sha256 "a482dbbd5d82ccf1653a6e410768af90e98db3293381dd058d751a6af279e0ae"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player NPAPI (plugin for Safari and Firefox) content debugger"
  homepage "https://www.adobe.com/support/flashplayer/debug_downloads.html"

  pkg "Install Adobe Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg"

  uninstall pkgutil:   "com.adobe.pkg.FlashPlayer",
            launchctl: "com.adobe.fpsaud",
            delete:    [
              "/Library/Application Support/Adobe/Flash Player Install Manager",
              "/Library/Internet Plug-Ins/Flash Player.plugin",
            ]

  zap trash: [
    "/Library/Internet Plug-Ins/flashplayer.xpt",
    "~/Library/Caches/Adobe/Flash Player",
    "~/Library/Logs/FlashPlayerInstallManager.log",
    "~/Library/Preferences/Macromedia/Flash Player",
    "~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState",
  ]
end
