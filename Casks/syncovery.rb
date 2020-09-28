cask "syncovery" do
  version "9.15"
  sha256 "162f20980f806cf340367c1ce2d0b563631568c0ff922c310d7e9de9f4028f9b"

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
