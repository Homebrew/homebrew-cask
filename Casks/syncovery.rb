cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.47i"

  if Hardware::CPU.intel?
    sha256 "5dd31de3d5079cadd4c19470d2277ef8744101b7cc90291829bf92afb6108e3c"
  else
    sha256 "cab53d204cb29aed6a6934fd749ba742d5d12d445ed097825b14c04bb27855af"
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
