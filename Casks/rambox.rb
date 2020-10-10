cask "rambox" do
  version "0.7.7"
  sha256 "b73accdc18e20b285dbf280d9db539cfdd8ccffa0ab4ccddc26bd596ab56a8df"

  # github.com/ramboxapp/community-edition/ was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast "https://github.com/ramboxapp/community-edition/releases.atom"
  name "Rambox"
  desc "Free and Open Source messaging and emailing app"
  homepage "https://rambox.pro/"

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
