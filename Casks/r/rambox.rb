cask "rambox" do
  version "3.0.0"
  sha256 "554fb932975e0b2ea3dac718397087606d47a68a8e5d972eaf46b1d16e854bbb"

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
