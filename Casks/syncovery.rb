cask "syncovery" do
  version "9.38c"

  if Hardware::CPU.intel?
    sha256 "37772687b155b440dd469565b6a3082da71fbdafd8c59e5e5754b78db2facc55"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  else
    sha256 "6f25e37017311a6a7a9dfd915eb400de782a8ddac8cc14a26a80224543172afd"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}-Apple.dmg"
  end

  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
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
