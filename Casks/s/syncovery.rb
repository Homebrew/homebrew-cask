cask "syncovery" do
  arch arm: "-Apple"

  version "10.6.15"
  sha256 arm:   "e4d28ce1b3bc67f98323f39f9f179d03a968c2bf2d2bede08e97a98f3f360891",
         intel: "0385ce5418d0b0bf63603a0bfa0f2ce34256f35b32be388f3448bac094fcbfcc"

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
