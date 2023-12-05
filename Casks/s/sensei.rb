cask "sensei" do
  version "1.5.9"
  sha256 :no_check

  url "https://cindori.s3.amazonaws.com/Sensei.dmg",
      verified: "cindori.s3.amazonaws.com/"
  name "Sensei"
  desc "Monitors the computer system and optimises its performance"
  homepage "https://sensei.app/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/51fc066a-f4b4-49ec-b966-b2f476d2eede"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sensei.app"

  uninstall delete:    [
              "/Library/LaunchAgents/org.cindori.SenseiMonitor.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiDaemon.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiHelper.plist",
              "/Library/PrivilegedHelperTools/org.cindori.SenseiTool",
            ],
            launchctl: "org.cindori.SenseiTool"

  zap trash: [
    "~/Library/Application Support/org.cindori.Sensei",
    "~/Library/Application Support/Sensei",
    "~/Library/Caches/org.cindori.Sensei",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.Sensei",
    "~/Library/Cookies/org.cindori.Sensei.binarycookies",
    "~/Library/HTTPStorages/org.cindori.Sensei",
    "~/Library/HTTPStorages/org.cindori.Sensei.binarycookies",
    "~/Library/Preferences/org.cindori.Sensei.plist",
    "~/Library/Saved Application State/org.cindori.Sensei.savedState",
  ]
end
