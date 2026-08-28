cask "cashnotify" do
  version "3.8.2"
  sha256 "a799d2a91048533192375d72eeba9e4bbd0bae6987606065b7d59c9487d9c3a8"

  url "https://github.com/BaguetteEngineering/download.cashnotify.com/releases/download/v#{version}/CashNotify-#{version}-universal.dmg",
      verified: "github.com/BaguetteEngineering/download.cashnotify.com/"
  name "CashNotify"
  desc "Monitor your Stripe and Paypal accounts from your menubar"
  homepage "https://cashnotify.com/"

  auto_updates true
  depends_on macos: :monterey

  app "CashNotify.app"

  uninstall launchctl: "com.baguetteengineering.cashnotify.ShipIt",
            quit:      "com.baguetteengineering.cashnotify"

  zap trash: [
    "~/Library/Application Support/Caches/cashnotify-updater",
    "~/Library/Application Support/CashNotify",
    "~/Library/Caches/com.baguetteengineering.cashnotify",
    "~/Library/Caches/com.baguetteengineering.cashnotify.ShipIt",
    "~/Library/Logs/CashNotify",
    "~/Library/Preferences/com.baguetteengineering.cashnotify.helper.plist",
    "~/Library/Preferences/com.baguetteengineering.cashnotify.plist",
    "~/Library/Saved Application State/com.baguetteengineering.cashnotify.savedState",
  ]
end
