cask "syncovery" do
  arch arm: "-Apple"

  version "10.12.3"
  sha256 arm:   "d5d60968d767ab2d315807ca24e85d1e3505d2f516a97c8a5f575d4e4cbb538c",
         intel: "977269f347ef606a9d0befba5dc084113d42e8a62f9db1408c3a9d9321f5cb22"

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
