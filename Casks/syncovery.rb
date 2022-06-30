cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.47v"

  if Hardware::CPU.intel?
    sha256 "e377e440ba97738ad98643e934b7945b14bc3eba13082c93637ac3ea1c069298"
  else
    sha256 "586aa8154077bdbc54a5b36d9d6c50d9ec508492b733bf7472293cb7a878b9bb"
  end

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
