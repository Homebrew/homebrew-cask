cask "moneymanager" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "c0b28d2b73d82185f88276a7c330d1f6c17e7d18eebc24614b001c63e223b0ba",
         intel: "8868bc6502448a94f99c5b7f2814a9f471673a7d850d805c0a5b26eca96dc25b"

  url "https://download.realbyteapps.com/MoneyManager-#{version}-#{arch}.dmg"
  name "MoneyManager"
  desc "Finance manager"
  homepage "https://realbyteapps.com/"

  livecheck do
    url "https://download.realbyteapps.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "MoneyManager.app"

  zap trash: [
    "~/Library/Application Support/Caches/moneymanager-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.realbyteapps.moneymanagerpc.sfl*",
    "~/Library/Application Support/MoneyManager",
    "~/Library/Caches/com.realbyteapps.moneymanagerpc*",
    "~/Library/HTTPStorages/com.realbyteapps.moneymanagerpc",
    "~/Library/Preferences/ByHost/com.realbyteapps.moneymanagerpc.*.plist",
    "~/Library/Preferences/com.realbyteapps.moneymanagerpc.plist",
    "~/Library/Saved Application State/com.realbyteapps.moneymanagerpc.savedState",
  ]
end
