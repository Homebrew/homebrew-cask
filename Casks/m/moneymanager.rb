cask "moneymanager" do
  version "1.8.11"
  sha256 "b544236e6767e781930ba8c1ba2bf2248cfd009ff79973b3a1883089c7c2c1bb"

  url "https://download.realbyteapps.com/MoneyManager-#{version}.dmg"
  name "MoneyManager"
  desc "Finance manager"
  homepage "https://realbyteapps.com/"

  livecheck do
    url "https://download.realbyteapps.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

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
