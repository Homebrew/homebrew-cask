cask "flash-player-debugger-npapi" do
  version "32.0.0.445"
  sha256 "a3cd363098648f989c5dbc356b79bd9c54083b8149f5669bc13b3b3275017a2f"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
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
