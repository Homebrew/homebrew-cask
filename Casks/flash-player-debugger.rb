cask "flash-player-debugger" do
  version "32.0.0.433"
  sha256 "9d8efc65469359b782242c19e81875f12e1ed3ca00cb3616aecc521667c14da0"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
  name "Adobe Flash Player projector content debugger"
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
