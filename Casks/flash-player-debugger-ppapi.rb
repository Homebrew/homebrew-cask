cask "flash-player-debugger-ppapi" do
  version "32.0.0.414"
  sha256 "818b60fe6e85d2b8d5bbfbc83665e1ba601a4d3c8b88df57cf1ec86b77704d3b"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_ppapi_debug.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player PPAPI (plugin for Opera and chromium) content debugger"
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
