cask "syncovery" do
  arch arm: "-Apple"

  version "10.11.3"
  sha256 arm:   "f07af81d371f5ae7365417aaf34b7d2b0681f2711b4f52d533bc7db4b9e79b45",
         intel: "06ef16981a9107ade0221855965f3511be7f4cb0d8170aae16e40188c6af705c"

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
    "~/Library/Preferences/Syncovery",
    "~/Library/Preferences/Syncovery.ini",
    "~/Saved Application State/com.company.Syncovery.savedState",
  ]
end
