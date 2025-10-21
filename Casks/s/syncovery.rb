cask "syncovery" do
  arch arm: "-Apple"

  version "11.9.4"
  sha256 arm:   "e356e09652e429465e0d70c9fdc6752909dff57274d73164d7f36adee82d3665",
         intel: "729ba8cffdad569c1efe9743ff466ba33f98dafc43e8aeed52d5e24b8f9b0a8d"

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
