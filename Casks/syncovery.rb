cask "syncovery" do
  version "9.18d"
  sha256 "4de6d6a212b1581c86235ed057ec3959fc2d8a74518eb99fe1841225cf16b84a"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  appcast "https://www.syncovery.com/download/mac/"
  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*"

  zap trash: "~/Library/Preferences/Syncovery.ini",
      rmdir: [
        "~/Library/Application Support/Syncovery",
        "~/Saved Application State/com.company.Syncovery.savedState",
        "~/Library/Preferences/Syncovery",
        "~/Library/Logs/Syncovery",
      ]
end
