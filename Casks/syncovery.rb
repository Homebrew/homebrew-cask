cask "syncovery" do
  arch arm: "-Apple"

  version "10.3.13"
  sha256 arm:   "61a85fd26245ebceddf46e1a81029bf6545d1065fd3b958761f5c9b1893240a4",
         intel: "8ed0d1056e1ba94965ac558633179f5c015d2107b22b3e5f12087fc1a32a2978"

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
