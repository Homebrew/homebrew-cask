cask "cashnotify" do
  version "3.5.0"
  sha256 "dd3701822ade256d0bb6f311ba5c7742ce35b81a0c87e0fbaf6b06911ce5bf21"

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
