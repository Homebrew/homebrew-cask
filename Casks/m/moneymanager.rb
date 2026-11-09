cask "moneymanager" do
  version "1.9.2"
  sha256 "3967a5f83379175f43557a795830fb5aba63cc925dcaddc8b91c77cb0e8a5d6b"

  url "https://download.realbyteapps.com/MoneyManager-#{version}-universal.dmg"
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
