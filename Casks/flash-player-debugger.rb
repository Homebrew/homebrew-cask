cask "flash-player-debugger" do
  version "32.0.0.445"
  sha256 "88a09191da28c841f84d33c504aa6b9ddd7ba25417200750ae0249cf52b3f260"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
  name "Adobe Flash Player projector content debugger"
  desc "Debugger for Adobe Flash player"
  homepage "https://www.adobe.com/support/flashplayer/debug_downloads.html"

  # Renamed to avoid conflict with flash-player.
  app "Flash Player.app", target: "Flash Player Debugger.app"

  uninstall pkgutil:   "com.adobe.pkg.PepperFlashPlayer",
            launchctl: "com.adobe.fpsaud",
            delete:    [
              "/Library/Application Support/Adobe/Flash Player Install Manager",
              "/Library/Internet Plug-Ins/PepperFlashPlayer",
            ]

  zap trash: [
    "/Library/Internet Plug-Ins/flashplayer.xpt",
    "~/Library/Caches/Adobe/Flash Player",
    "~/Library/Logs/FlashPlayerInstallManager.log",
    "~/Library/Preferences/Macromedia/Flash Player",
    "~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState",
  ]
end
