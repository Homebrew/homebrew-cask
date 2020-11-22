cask "owncloud" do
  version "2.7.1.2560"
  sha256 "da96347539fad53d72f7fddeb2d913e5296a2c69d3a021399396cca82388bc71"

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
