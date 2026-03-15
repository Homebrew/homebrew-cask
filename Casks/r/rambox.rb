cask "rambox" do
  version "2.6.1"
  sha256 "ffa35d4f23f67cb283e6eae9266a7d523aaea77ea7d3ff0ba875cd897c422ba0"

  url "https://github.com/ramboxapp/download/releases/download/v#{version}/Rambox-#{version}-mac.zip",
      verified: "github.com/ramboxapp/download/"
  name "Rambox"
  desc "Workspace simplifier - to organize your workspace and boost your productivity"
  homepage "https://rambox.app/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Rambox-darwin-universal/Rambox.app"

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
