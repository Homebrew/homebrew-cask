cask "syncovery" do
  arch arm: "-Apple"

  version "10.12.4"
  sha256 arm:   "ebbc6c663ae8517d68ee97c987913a18cc9bd97ec39e6f60d6a53ac4830e9865",
         intel: "449a560ba9ffd8cd74e3643489e9a11e24a4c0976dbbef197d985d1fd77a511f"

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
