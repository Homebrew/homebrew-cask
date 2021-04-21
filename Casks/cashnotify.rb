cask "cashnotify" do
  version "3.4.0"
  sha256 :no_check

  url "https://download.cashnotify.com/download/mac/"
  name "CashNotify"
  homepage "https://cashnotify.com/"

  livecheck do
    url "https://github.com/BaguetteEngineering/download.cashnotify.com"
    strategy :git
  end

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
