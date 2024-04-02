cask "nextcloud" do
  on_big_sur :or_older do
    version "3.8.1"
    sha256 "448647db0068ff9a2b669ff2f9d715a36b4e5e1af82e9849e57d9f7078d1bd2e"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :mojave"
  end
  on_monterey :or_newer do
    version "3.12.3"
    sha256 "1c020cb3163b9c1da950f8a6c4876e58f80ebdc59b07b38c742c5159d0112e06"

    livecheck do
      url :url
      regex(/^Nextcloud[._-]v?(\d+(?:\.\d+)+)\.pkg$/i)
      strategy :github_latest do |json, regex|
        json["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end
    end
  end

  url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}.pkg",
      verified: "github.com/nextcloud-releases/desktop/"
  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  auto_updates true

  pkg "Nextcloud-#{version}.pkg"
  binary "/Applications/Nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall quit:    "com.nextcloud.desktopclient",
            pkgutil: "com.nextcloud.desktopclient",
            delete:  "/Applications/Nextcloud.app"

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
