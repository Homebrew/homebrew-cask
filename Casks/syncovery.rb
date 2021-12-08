cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.39r"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "11b87ffd74da5ea83d6f8f3e5f3c3815c95ed2961d1f306fb26b39812188f08e"
  else
    sha256 "d34f408af39112fa6366c05151e745e635dfcba9d7650178deaa879b161d107f"
  end

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
