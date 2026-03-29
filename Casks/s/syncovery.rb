cask "syncovery" do
  arch arm: "-Apple"

  version "11.14.0"
  sha256 arm:   "53ecc99a588532920c64cb8acb74e0adcfa6ed3b37575aab9bf2e14d8accfcac",
         intel: "bb55fc95b329c4e2f0b70b6d9c9f56fca46a3339c99b1e7f46535185f3c9ee42"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  name "Syncovery"
  desc "File synchronisation and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac[._-]?v?(\d+(?:\.\d+)+[a-z]?)#{arch}\.dmg}i)
  end

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*",
            delete:  "/Applications/Syncovery.app"

  zap trash: [
    "~/Library/Application Support/Syncovery",
    "~/Library/Logs/Syncovery",
    "~/Library/Preferences/Syncovery",
    "~/Library/Preferences/Syncovery.ini",
    "~/Library/Saved Application State/com.company.Syncovery.savedState",
  ]
end
