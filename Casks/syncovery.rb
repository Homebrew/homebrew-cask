cask "syncovery" do
  version "9.17"
  sha256 "91937e41583b29b2dbca53f93540c99b394f4b63e370fc3599ffd165aa6a8b44"

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
