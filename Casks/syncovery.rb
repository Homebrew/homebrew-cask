cask "syncovery" do
  version "9.31a"
  sha256 "9c89d6519659340b226a300d5d6a469cb46b40e92c1db2966ac0f45303477412"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    strategy :page_match
    regex(%r{href=.*?/SyncoveryMac(\d+(?:\.\d+)*[a-z]?)\.dmg}i)
  end

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
