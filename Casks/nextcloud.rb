cask "nextcloud" do
  if MacOS.version <= :el_capitan
    version "2.6.5.20200710-legacy"
    sha256 "4c67e50361dd5596fb884002d1ed907fe109d607fba2cabe07e505addd164519"

    url "https://github.com/nextcloud/desktop/releases/download/v#{version.major_minor_patch}/Nextcloud-#{version}.pkg",
        verified: "github.com/nextcloud/desktop/"
  else
    version "3.5.1"
    sha256 "594b98e1a316b931542c35cb7c179842469fc49c1fe4fad67d2744dac961d8c4"

    url "https://github.com/nextcloud/desktop/releases/download/v#{version}/Nextcloud-#{version}.pkg",
        verified: "github.com/nextcloud/desktop/"
  end

  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  livecheck do
    url "https://github.com/nextcloud/desktop/releases/"
    strategy :page_match
    regex(/Nextcloud[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :yosemite"

  pkg "Nextcloud-#{version}.pkg"
  binary "/Applications/Nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall pkgutil: "com.nextcloud.desktopclient"

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
