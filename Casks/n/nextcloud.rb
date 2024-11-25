cask "nextcloud" do
  on_big_sur :or_older do
    version "3.8.1"
    sha256 "448647db0068ff9a2b669ff2f9d715a36b4e5e1af82e9849e57d9f7078d1bd2e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.15.0"
    sha256 "8c12fe3c8abcf8368c44bf4c96808d2c44dd18d621d0235238b3724d3c9ad68c"

    # Upstream publishes releases for multiple different minor versions and the
    # "latest" release is sometimes a lower version. Until the "latest" release
    # is reliably the highest version, we have to check multiple releases.
    livecheck do
      url :url
      regex(/^Nextcloud[._-]v?(\d+(?:\.\d+)+)\.pkg$/i)
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
  end

  url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}.pkg",
      verified: "github.com/nextcloud-releases/desktop/"
  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  auto_updates true
  conflicts_with cask: "nextcloud-vfs"
  depends_on macos: ">= :mojave"

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
