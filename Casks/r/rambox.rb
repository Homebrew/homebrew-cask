cask "rambox" do
  version "2.5.0"
  sha256 "68a21d55d7d8251ef87e6b1de18743b7e4d5a3faf078415d7c0faf326df2f7c9"

  url "https://github.com/ramboxapp/download/releases/download/v#{version}/Rambox-#{version}-mac.zip",
      verified: "github.com/ramboxapp/download/"
  name "Rambox"
  desc "Workspace simplifier - to organize your workspace and boost your productivity"
  homepage "https://rambox.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rambox.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Rambox Helper_*.plist",
    "~/Library/Application Support/CrashReporter/Rambox_*.plist",
    "~/Library/Application Support/Rambox",
    "~/Library/Caches/com.grupovrs.ramboxce",
    "~/Library/Caches/com.grupovrs.ramboxce.ShipIt",
    "~/Library/Caches/com.saenzramiro.rambox",
    "~/Library/Logs/Rambox",
    "~/Library/Preferences/ByHost/com.grupovrs.ramboxce.ShipIt.*.plist",
    "~/Library/Preferences/com.grupovrs.ramboxce.helper.plist",
    "~/Library/Preferences/com.grupovrs.ramboxce.plist",
    "~/Library/Preferences/com.saenzramiro.rambox.helper.plist",
    "~/Library/Preferences/com.saenzramiro.rambox.plist",
    "~/Library/Saved Application State/com.grupovrs.ramboxce.savedState",
    "~/Library/Saved Application State/com.saenzramiro.rambox.savedState",
    "~/Library/WebKit/com.saenzramiro.rambox",
  ]
end
