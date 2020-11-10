cask "flash-player" do
  version "32.0.0.453"
  sha256 "6941c66b00865f348b733b9617b9b1526bc83de850089e6eea78b020eace3716"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
  name "Adobe Flash Player projector"
  desc "Adobe Flash player"
  homepage "https://www.adobe.com/support/flashplayer/debug_downloads.html"

  app "Flash Player.app"

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
