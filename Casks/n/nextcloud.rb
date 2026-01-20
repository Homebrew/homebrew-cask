cask "nextcloud" do
  on_big_sur :or_older do
    version "3.13.4"
    sha256 "8c31281f2acecc2a4e384e01199767569a8f3aa2beedc8ae93513ba0c87062c6"

    url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-legacy-#{version}.pkg",
        verified: "github.com/nextcloud-releases/desktop/"

    livecheck do
      url "https://nextcloud.com/install/#desktop-files"
      regex(/href=.*?Nextcloud[._-]legacy[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    end
  end
  on_monterey :or_newer do
    version "4.0.5"
    sha256 "cdd1dfb124020fe79079dc410276473a5327d9edfd821ec9c9a58f7b770a5657"

    url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}.pkg",
        verified: "github.com/nextcloud-releases/desktop/"

    livecheck do
      url "https://nextcloud.com/install/#desktop-files"
      regex(/href=.*?Nextcloud[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    end
  end

  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  auto_updates true
  conflicts_with cask: "nextcloud-vfs"

  pkg "Nextcloud-#{version}.pkg"
  binary "/Applications/Nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall launchctl: "com.nextcloud.desktopclient",
            quit:      "com.nextcloud.desktopclient",
            pkgutil:   "com.nextcloud.desktopclient",
            delete:    "/Applications/Nextcloud.app"

  zap trash: [
    "~/Library/Application Scripts/com.nextcloud.desktopclient.FinderSyncExt",
    "~/Library/Application Support/Nextcloud",
    "~/Library/Caches/Nextcloud",
    "~/Library/Containers/com.nextcloud.desktopclient.FinderSyncExt",
    "~/Library/Group Containers/com.nextcloud.desktopclient",
    "~/Library/Preferences/com.nextcloud.desktopclient.plist",
    "~/Library/Preferences/Nextcloud",
  ]
end
