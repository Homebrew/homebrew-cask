cask "flash-player" do
  version "32.0.0.414"
  sha256 "8d7a8f8902f4262445ee55e58512487b196a061addfaafc3f9b08d77fb6e667c"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player projector"
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
