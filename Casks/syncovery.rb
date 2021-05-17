cask "syncovery" do
  version "9.35b"

  if Hardware::CPU.intel?
    sha256 "8544d3589cde2632f572da258a2c8546589d1880256126ca2e322e77c870bed8"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  else
    sha256 "79460fa75954fd56280e6132535ade23f81d61538b3ad3d34c6de613e9e1899d"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}-Apple.dmg"
  end

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
