cask "rambox" do
  version "3.1.2"
  sha256 "771e21a9ffb6af99b33dd1d5baea4c7bc80d6b92e99afe60bec0a35716b2e491"

  url "https://github.com/ramboxapp/download/releases/download/v#{version}/Rambox-#{version}-mac.zip"
  name "Rambox"
  desc "Workspace simplifier - to organize your workspace and boost your productivity"
  homepage "https://rambox.app/"

  auto_updates true
  depends_on macos: :monterey

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
