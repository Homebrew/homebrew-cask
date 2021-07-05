cask "syncovery" do
  version "9.35f"

  if Hardware::CPU.intel?
    sha256 "2c32237c0d7888237f99d8f3ee2715c1204645f7ba4dc30520e1a3ae45af82f9"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  else
    sha256 "994b58125ccb1f01f875d9853b8021b1a86d3dd5d3c17f9bffeeb407a2355f67"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}-Apple.dmg"
  end

  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
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
