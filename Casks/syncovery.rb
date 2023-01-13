cask "syncovery" do
  arch arm: "-Apple"

  version "10.1.15"
  sha256 arm:   "5d35e1b5f39611ead501f6a71f239fa560d6b732a04ffd2476108aba07dafcc3",
         intel: "01760a6b6732fb185a0c47986c5d7838274d77e664e0e270da03f464e0ca9ef9"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac[._-]?v?(\d+(?:\.\d+)+[a-z]?)#{arch}\.dmg}i)
  end

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*"

  zap trash: [
    "~/Library/Application Support/Syncovery",
    "~/Library/Logs/Syncovery",
    "~/Library/Preferences/Syncovery.ini",
    "~/Library/Preferences/Syncovery",
    "~/Saved Application State/com.company.Syncovery.savedState",
  ]
end
