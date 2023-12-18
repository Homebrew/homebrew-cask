cask "nextcloud" do
  on_el_capitan :or_older do
    version "2.6.5.20200710-legacy"
    sha256 "4c67e50361dd5596fb884002d1ed907fe109d607fba2cabe07e505addd164519"

    url "https://github.com/nextcloud/desktop/releases/download/v#{version.major_minor_patch}/Nextcloud-#{version}.pkg",
        verified: "github.com/nextcloud/desktop/"
  end
  on_sierra :or_newer do
    version "3.11.0"
    sha256 "e2e42c4d255546e32d11e3c2c20d8e805aa08425d6f7994f0a1fa3c3438047b3"

    url "https://github.com/nextcloud-releases/desktop/releases/download/v#{version}/Nextcloud-#{version}.pkg",
        verified: "github.com/nextcloud-releases/desktop/"
  end

  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

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
