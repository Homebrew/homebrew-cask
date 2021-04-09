cask "flash-ppapi" do
  version "32.0.0.465"
  sha256 "fc4381b01c28fb6f1490e88ab6a16181e2bc2176bc47dfe1f0a001794d9440b9"

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  name "Adobe Flash Player PPAPI (plugin for Opera and Chromium)"
  homepage "https://get.adobe.com/flashplayer/otherversions/"

  livecheck do
    url "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml"
    strategy :page_match do |page|
      v = page[/version="(\d+(?:,\d+)*)"/i, 1]
      v.tr(",", ".")
    end
  end

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
