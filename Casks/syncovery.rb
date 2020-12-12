cask "syncovery" do
  version "9.23"
  sha256 "90224a0950ba5ca783ec50829535e8688e40ab019fd7a97598026377f64801df"

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
