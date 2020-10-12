cask "nextcloud" do
  if MacOS.version <= :el_capitan
    version "2.6.5.20200710-legacy"
    sha256 "4c67e50361dd5596fb884002d1ed907fe109d607fba2cabe07e505addd164519"
  else
    version "3.0.2"
    sha256 "69103a648bf59220a1dd09030ea2e7ba39fdf910ac456769701eadaea27682fb"
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast "https://download.nextcloud.com/desktop/releases/Mac/Installer/"
  name "Nextcloud"
  desc "Desktop sync client for Nextcloud software products"
  homepage "https://nextcloud.com/"

  depends_on macos: ">= :yosemite"

  pkg "Nextcloud-#{version}.pkg"
  binary "#{appdir}/nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall pkgutil: "com.nextcloud.desktopclient"

  zap trash: [
    "~/Library/Application Support/Nextcloud",
    "~/Library/Preferences/Nextcloud",
    "~/Library/Preferences/com.nextcloud.desktopclient.plist",
    "~/Library/Application Scripts/com.nextcloud.desktopclient.FinderSyncExt",
    "~/Library/Group Containers/com.nextcloud.desktopclient",
    "~/Library/Containers/com.nextcloud.desktopclient.FinderSyncExt",
    "~/Library/Caches/Nextcloud",
  ]
end
