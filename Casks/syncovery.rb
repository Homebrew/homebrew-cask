cask "syncovery" do
  version "8.68i"
  sha256 "917b6f80fd73ec40508ef97781289c4f265530a3110e92191f0116cdadbb2efb"

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
