cask "morisawa-desktop-manager" do
  version "2.1.2"
  sha256 "6cbfb743ff4f66b571eb41561c050812ba0314bbe1c3ea544138d68052023484"

  url "https://morisawafonts.com/resources/dm/#{version}/mac/site/MorisawaDesktopManager_#{version}.dmg"
  name "Morisawa Desktop Manager"
  desc "Manager for Morisawa Fonts"
  homepage "https://morisawafonts.com/mypage/dm/"

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
              "jp.co.morisawa.MorisawaDesktopManager.ServiceManager",
            ],
            pkgutil:   "jp.co.morisawa.MorisawaDesktopManager.*",
            delete:    "/Application/Morisawa Desktop Manager.app"

  zap trash: [
    "/Library/Application Support/Morisawa Desktop Manager",
    "/Library/Application Support/Morisawa/Logs/MdmInstall.log",
    "~/Library/Application Support/jp.co.morisawa.MorisawaDesktopManager",
    "~/Library/Application Support/Morisawa Desktop Manager",
    "~/Library/Application Support/MorisawaFonts",
    "~/Library/Fonts/MorisawaFonts",
    "~/Library/HTTPStorages/jp.co.morisawa.MorisawaDesktopManager",
    "~/Library/Preferences/jp.co.morisawa.MorisawaDesktopManager.plist",
  ]
end
