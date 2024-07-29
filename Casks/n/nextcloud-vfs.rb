cask "nextcloud-vfs" do
  version "3.13.2"
  sha256 "5141dfcea9dd4d08faa86d4a2fd88f558e6d6a16e9dab2b5942533130153b0e3"

  url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}-macOS-vfs.pkg",
      verified: "github.com/nextcloud-releases/desktop/"
  name "Nextcloud Virtual Files"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  # Upstream publishes releases for multiple different minor versions and the
  # "latest" release is sometimes a lower version. Until the "latest" release
  # is reliably the highest version, we have to check multiple releases.
  livecheck do
    url :url
    regex(/^Nextcloud[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]vfs\.pkg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
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
