cask "flash-player-debugger-ppapi" do
  version "32.0.0.453"
  sha256 "232d82649f93610da603621a7aeb5c17e946461e021e03469cdda727dfb53595"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_ppapi_debug.dmg"
  appcast "https://www.adobe.com/support/flashplayer/debug_downloads.html"
  name "Adobe Flash Player PPAPI (plugin for Opera and chromium) content debugger"
  desc "Adobe Flash Player plugin for Opera and chromium content debugger"
  homepage "https://www.adobe.com/support/flashplayer/debug_downloads.html"

  pkg "Install Adobe Pepper Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg"

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
