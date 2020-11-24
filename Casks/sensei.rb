cask "sensei" do
  version "1.3.3,75"
  sha256 "1ed43a223ac2dadd2eaf1a2f5061da10c4dacb717b44a5a6970ea19c3071833b"

  # cindori.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cindori.s3.amazonaws.com/Sensei.dmg"
  appcast "https://api.appcenter.ms/v0.1/public/sparkle/apps/51fc066a-f4b4-49ec-b966-b2f476d2eede"
  name "Sensei"
  desc "Monitors the computer system and optimizes its performance"
  homepage "https://sensei.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sensei.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/org.cindori.SenseiTool",
            launchctl: "org.cindori.SenseiTool"

  zap trash: [
    "~/Library/Application Support/Sensei",
    "~/Library/Application Support/org.cindori.Sensei",
    "~/Library/Caches/org.cindori.Sensei",
    "~/Library/Cookies/org.cindori.Sensei.binarycookies",
    "~/Library/Preferences/org.cindori.Sensei.plist",
    "~/Library/Saved Application State/org.cindori.Sensei.savedState",
  ]
end
