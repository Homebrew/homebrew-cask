cask "flash-npapi" do
  version "32.0.0.453"
  sha256 "1239f4bdd70281d1a8fa72e817b67511b38dac9708d9bb3aa08deb312b81aa98"

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
  name "Adobe Flash Player NPAPI (plugin for Safari and Firefox)"
  desc "Adobe Flash player plugin for Safari and Firefox"
  homepage "https://get.adobe.com/flashplayer/"

  auto_updates true

  pkg "Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg"

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
