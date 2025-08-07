cask "sensei" do
  version "1.7.0,122"
  sha256 "1005c45f76e0df5aeb7c910b138a279e2692940c28ec1d2341a01c1d44f21619"

  url "https://cdn.cindori.com/apps/sensei/updates/#{version.csv.first}-#{version.csv.second}/Sensei.dmg"
  name "Sensei"
  desc "Monitors the computer system and optimises its performance"
  homepage "https://cindori.com/sensei"

  livecheck do
    url "https://cdn.cindori.com/apps/sensei/updates/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Sensei.app"

  uninstall launchctl: "org.cindori.SenseiTool",
            delete:    [
              "/Library/LaunchAgents/org.cindori.SenseiMonitor.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiDaemon.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiHelper.plist",
              "/Library/PrivilegedHelperTools/org.cindori.SenseiTool",
            ]

  zap trash: [
    "~/Library/Application Support/org.cindori.Sensei",
    "~/Library/Application Support/Sensei",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.Sensei",
    "~/Library/Caches/org.cindori.Sensei",
    "~/Library/Cookies/org.cindori.Sensei.binarycookies",
    "~/Library/HTTPStorages/org.cindori.Sensei",
    "~/Library/HTTPStorages/org.cindori.Sensei.binarycookies",
    "~/Library/Preferences/org.cindori.Sensei.plist",
    "~/Library/Saved Application State/org.cindori.Sensei.savedState",
  ]
end
