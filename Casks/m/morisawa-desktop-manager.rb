cask "morisawa-desktop-manager" do
  version "3.0.0"
  sha256 "93f49bf329cd862ff2905824e76791c2ce7a981b91d4ff2d511264b8144ce227"

  url "https://morisawafonts.com/resources/dm/#{version}/mac/site/MorisawaDesktopManager_#{version}.dmg"
  name "Morisawa Desktop Manager"
  desc "Manager for Morisawa Fonts"
  homepage "https://en.morisawafonts.com/"

  livecheck do
    url "https://morisawafonts.com/resources/dm/mf_updates.mac.json"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Morisawa Desktop Manager.pkg"

  uninstall launchctl: [
              "application.MDMAgentManager.*",
              "application.MDMService.*",
              "jp.co.morisawa.MorisawaDesktopManager.ServiceManager",
            ],
            pkgutil:   "jp.co.morisawa.MorisawaDesktopManager.*",
            delete:    "/Application/Morisawa Desktop Manager.app"

  zap trash: [
        "/Library/Application Support/Morisawa Desktop Manager",
        "/Library/Application Support/Morisawa/Logs/MdmInstall.log",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.co.morisawa.morisawadesktopmanager.sfl*",
        "~/Library/Application Support/jp.co.morisawa.MorisawaDesktopManager",
        "~/Library/Application Support/Morisawa Desktop Manager",
        "~/Library/Application Support/MorisawaFonts",
        "~/Library/Caches/jp.co.morisawa.MorisawaDesktopManager",
        "~/Library/HTTPStorages/jp.co.morisawa.MorisawaDesktopManager",
        "~/Library/HTTPStorages/jp.co.morisawa.MorisawaDesktopManager.binarycookies",
        "~/Library/Preferences/jp.co.morisawa.MorisawaDesktopManager.plist",
      ],
      rmdir: [
        "/Library/Application Support/Morisawa",
        "/Library/Application Support/Morisawa/Logs",
        "~/Library/Fonts/MorisawaFonts",
      ]
end
