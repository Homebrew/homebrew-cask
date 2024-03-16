cask "syncovery" do
  arch arm: "-Apple"

  version "10.13.1"
  sha256 arm:   "6f1faa5938dbf74ff84f36c7112e589d928ec0aecba2b30094e26f3da81c7d14",
         intel: "f82ac5a1278b1c37bb963cc3d7fb52a51194763fdb8b4c1ee5bee52c1fad3f32"

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
    "~/Saved Application State/com.company.Syncovery.savedState",
  ]
end
