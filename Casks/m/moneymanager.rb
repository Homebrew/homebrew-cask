cask "moneymanager" do
  version "1.8.20"
  sha256 "e90081caba756a4ac072014b55a06cd2873a444e968ecab4d170a8212a34b6b3"

  url "https://download.realbyteapps.com/MoneyManager-#{version}.dmg"
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
