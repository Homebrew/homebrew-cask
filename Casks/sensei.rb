cask "sensei" do
  version "1.2.15,67"
  sha256 "f7ea219b05ec580a1c6a5061366eafee2a9db0931bec39e63a1bbba1a19741cf"

  # cindori.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cindori.s3.amazonaws.com/Sensei.dmg"
  appcast "https://api.appcenter.ms/v0.1/public/sparkle/apps/51fc066a-f4b4-49ec-b966-b2f476d2eede"
  name "Sensei"
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
