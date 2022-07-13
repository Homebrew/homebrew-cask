cask "cashnotify" do
  version "3.6.2"
  sha256 "ecee20a6b48b6c8423de4d8c5adaf1fa8962286107b47215c1efe6c39f6a1764"

  url "https://github.com/BaguetteEngineering/download.cashnotify.com/releases/download/v#{version}/CashNotify-#{version}.dmg",
      verified: "github.com/BaguetteEngineering/download.cashnotify.com/"
  name "CashNotify"
  desc "Monitor your Stripe and Paypal accounts from your menubar"
  homepage "https://cashnotify.com/"

  auto_updates true

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
