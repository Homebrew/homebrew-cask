cask "owncloud" do
  version "2.6.3.13765"
  sha256 "cb2d78923ffe89660ae2dd69e4c12b3fa0242ba22f9ec2dcb294e3ac958dee03"

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast "https://github.com/owncloud/client/releases.atom"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  depends_on macos: ">= :sierra"

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
    "com.ownCloud.client",
    "com.owncCloud.finderPlugin",
  ]

  zap trash: [
    "~/Library/Group Containers/9B5WD74GWJ.com.owncloud.desktopclient",
    "~/Library/Caches/com.owncloud.desktopclient",
    "~/Library/Application Scripts/com.owncloud.desktopclient.FinderSyncExt",
    "~/Library/Containers/com.owncloud.desktopclient.FinderSyncExt",
    "~/Library/Preferences/com.owncloud.desktopclient.plist",
    "~/Library/Application Support/ownCloud",
    "~/Library/Preferences/ownCloud",
  ]
end
