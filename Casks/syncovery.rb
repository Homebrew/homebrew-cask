cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.47w"

  if Hardware::CPU.intel?
    sha256 "51dde7d0d28d90167eea9696a021a7adc153c6b730678b9a11bbd4b05f129ac0"
  else
    sha256 "402861d78da8902888f1bedaaa790bf0d2e10876c1fd060854f096a8fda02427"
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
