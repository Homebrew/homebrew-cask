cask "syncovery" do
  version "9.33g"
  sha256 "47b620c85305c4f22e40a2b4936e683dbdf172b367925b48377deba6fadca32a"

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
