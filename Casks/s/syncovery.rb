cask "syncovery" do
  arch arm: "-Apple"

  version "10.17.5"
  sha256 arm:   "c116f6f457d8af3e4b328ef2c8ff8cd76aaff2ad83657136c995226418a77e51",
         intel: "e8b27c24d7fa40b02f31fdfb85c7eea3c2fd7415c724f1f9ad1054bdac703e44"

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
