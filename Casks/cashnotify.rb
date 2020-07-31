cask "cashnotify" do
  version "3.3.2"
  sha256 "7b255a80775d4c5dc3baba55c3039bbaf139f105617e0ab28f64de74e6baf7cb"

  url "https://download.cashnotify.com/download/mac/"
  appcast "https://github.com/BaguetteEngineering/download.cashnotify.com/releases.atom"
  name "CashNotify"
  homepage "https://cashnotify.com/"

  auto_updates true

  app "CashNotify.app"

  uninstall launchctl: "com.baguetteengineering.cashnotify.ShipIt",
            quit:      "com.baguetteengineering.cashnotify"

  zap trash: [
    "~/Library/Application Support/CashNotify",
    "~/Library/Application Support/Caches/cashnotify-updater",
    "~/Library/Caches/com.baguetteengineering.cashnotify",
    "~/Library/Caches/com.baguetteengineering.cashnotify.ShipIt",
    "~/Library/Logs/CashNotify",
    "~/Library/Preferences/com.baguetteengineering.cashnotify.helper.plist",
    "~/Library/Preferences/com.baguetteengineering.cashnotify.plist",
    "~/Library/Saved Application State/com.baguetteengineering.cashnotify.savedState",
  ]
end
