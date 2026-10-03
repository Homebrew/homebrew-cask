cask "syncovery" do
  arch arm: "-Apple"

  version "12.8.9"
  sha256 arm:   "3603707d84228f97d252ffbafc4ccade3e10b022cb1d7f312e9ad86f4bfbe0c8",
         intel: "4c0f088231cc3c59da04c643c137fef500bb3770e5e880fbf9d26b0923265f91"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  name "Syncovery"
  desc "File synchronisation and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac[._-]?v?(\d+(?:\.\d+)+[a-z]?)#{arch}\.dmg}i)
  end

  depends_on :macos

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
