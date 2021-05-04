cask "syncovery" do
  version "9.35a"

  if Hardware::CPU.intel?
    sha256 "596b59060d0e354eff5a150e8ebde95bc9cd0bd22d3ebd175a3ca280a74073e1"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  else
    sha256 "896672cfdcbab4c1c184ce5046549200d4b161543b1832f8fa61276044c4ca11"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}-Apple.dmg"
  end

  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    strategy :page_match
    regex(%r{href=.*?/SyncoveryMac(\d+(?:\.\d+)*[a-z]?)\.dmg}i)
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
