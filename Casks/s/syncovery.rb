cask "syncovery" do
  arch arm: "-Apple"

  version "10.15.6"
  sha256 arm:   "fc1fff48e9fe4226f135e9afc0a73bb3413f5d94e9d428271c84cce3d6645592",
         intel: "c1df7c189eeacee46f84087eb7344d850d5e2ae742281b6994bdfed88fdaff42"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  name "Syncovery"
  desc "File synchronisation and backup software"
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
    "~/Library/Saved Application State/com.company.Syncovery.savedState",
  ]
end
