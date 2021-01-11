cask "syncovery" do
  version "9.26e"
  sha256 "de1b792a85180365822076e8d230ee42b72dbed8bfd2e80ed462b6c8bb17d508"

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
