cask "syncovery" do
  arch arm: "-Apple"

  version "11.10.1"
  sha256 arm:   "5951cbfa0a7aa845c850c8981376eecf3cf6e2d08ea3e13edd06401c168f953c",
         intel: "cd0cc18a0811b7e49d8537d15ef2481d5890d911d2a07420110d8029cfe028e4"

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
