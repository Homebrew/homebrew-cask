cask "nextcloud-vfs" do
  version "3.16.2"
  sha256 "530b7b242dda612981d2af144a26808f5ea7a51b86cc87893045feb8c1d607a3"

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
