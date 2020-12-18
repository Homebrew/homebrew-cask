cask "owncloud" do
  version "2.7.3.2877"
  sha256 "de74292de46d833535842c071aa7f210aff96ce92e80ab30e2ae66a744fb32cc"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}.pkg"
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
