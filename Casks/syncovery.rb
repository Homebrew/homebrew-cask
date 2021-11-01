cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.39e"

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "0fd98c967548c011eef41c1d87159211d66528863993f1c451ba72c6be248771"
  else
    sha256 "9b70beaccc8f95d710064943d45e60c52618f242653a13df6eecdea09ce47fe5"
  end

  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac(\d+(?:\.\d+)*[a-z]?)#{arch}\.dmg}i)
  end

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*"

  zap trash: "~/Library/Preferences/Syncovery.ini",
      rmdir: [
        "~/Library/Application Support/Syncovery",
        "~/Saved Application State/com.company.Syncovery.savedState",
        "~/Library/Preferences/Syncovery",
        "~/Library/Logs/Syncovery",
      ]
end
