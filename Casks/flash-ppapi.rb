cask "flash-ppapi" do
  version "32.0.0.433"
  sha256 "6e28682b1b9bcb9b3363af9fbeac3e3c04218446f8b6cb36d3d4bad7c823c1b7"

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player PPAPI (plugin for Opera and Chromium)"
  homepage "https://get.adobe.com/flashplayer/otherversions/"

  auto_updates true

  pkg "Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg"

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
