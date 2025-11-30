cask "nextcloud-vfs" do
  version "4.0.2"
  sha256 "b7b871c9f637a932b23219e1900619c73e0595ae3744054282c72f913d355552"

  url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}-macOS-vfs.pkg",
      verified: "github.com/nextcloud-releases/desktop/"
  name "Nextcloud Virtual Files"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  livecheck do
    url "https://nextcloud.com/install/#desktop-files"
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
