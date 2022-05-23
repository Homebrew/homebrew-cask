cask "rambox" do
  version "2.0.5"
  sha256 "17a77028df5e743ea042f4c2ef5b424f4ee8b051a772515ac26e29a9a460c47f"

  url "https://github.com/ramboxapp/download/releases/download/v#{version}/Rambox-#{version}-mac.zip",
      verified: "github.com/ramboxapp/download/"
  name "Rambox"
  desc "Free and Open Source messaging and emailing app"
  homepage "https://rambox.pro/"

  conflicts_with cask: "homebrew/cask-versions/rambox-ce"

  app "Rambox.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Rambox Helper_*.plist",
    "~/Library/Application Support/CrashReporter/Rambox_*.plist",
    "~/Library/Application Support/Rambox",
    "~/Library/Caches/com.grupovrs.ramboxce.ShipIt",
    "~/Library/Caches/com.grupovrs.ramboxce",
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
