cask "syncovery" do
  arch arm: "-Apple"

  version "10.4.2"
  sha256 arm:   "c7b6cbc2eda53d7720715d5aa416bc7d29cb9da73786ca7665b77147f1969eb8",
         intel: "7af8ece4b847d7e1aecabf9fa47c4922a72f6a5059f7aa87900fa340074eebf2"

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
