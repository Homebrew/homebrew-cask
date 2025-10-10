cask "nextcloud-vfs" do
  version "3.17.3"
  sha256 "13fee259bc4d7ccb2c8c2bd97576a14f42aab06e489bd23d5a63cb4610ef5c63"

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}-macOS-vfs.pkg"
  name "Nextcloud Virtual Files"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  livecheck do
    url "https://download.nextcloud.com/desktop/releases/Mac/Installer/"
    regex(/href=.*?Nextcloud[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]vfs\.pkg/i)
  end

  auto_updates true
  conflicts_with cask: "nextcloud"
  depends_on macos: ">= :monterey"

  pkg "Nextcloud-#{version}-macOS-vfs.pkg"
  binary "/Applications/Nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall launchctl: "com.nextcloud.desktopclient",
            quit:      "com.nextcloud.desktopclient",
            pkgutil:   "com.nextcloud.desktopclient",
            delete:    "/Applications/Nextcloud.app"

  zap trash: [
    "~/Library/Application Scripts/com.nextcloud.desktopclient.FileProviderExt",
    "~/Library/Application Scripts/com.nextcloud.desktopclient.FileProviderUIExt",
    "~/Library/Application Scripts/com.nextcloud.desktopclient.FinderSyncExt",
    "~/Library/Application Support/Nextcloud",
    "~/Library/Caches/Nextcloud",
    "~/Library/Containers/Nextcloud Extensions",
    "~/Library/Containers/Nextcloud File Provider Extension",
    "~/Library/Containers/Nextcloud File Provider UI Extension",
    "~/Library/Group Containers/com.nextcloud.desktopclient",
    "~/Library/HTTPStorages/com.nextcloud.desktopclient",
    "~/Library/LaunchAgents/com.nextcloud.desktopclient.plist",
    "~/Library/Preferences/com.nextcloud.desktopclient",
    "~/Library/Preferences/com.nextcloud.desktopclient.plist",
    "~/Library/Preferences/Nextcloud",
  ]
end
