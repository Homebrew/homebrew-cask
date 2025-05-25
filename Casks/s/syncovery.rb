cask "syncovery" do
  arch arm: "-Apple"

  version "11.4.0"
  sha256 arm:   "1ce91517368d00f3d5571430abbd8b7c443c4fd6ec9d953391904c7e5c474f3d",
         intel: "1071f2bda32bf76bcedc41262d461bb7d19d76c66a5ae461f3210a1bf5d43a42"

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
