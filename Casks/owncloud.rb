cask "owncloud" do
  version "2.8.1.4157"
  sha256 "81489f71fc57ec90a6f031cd192ece40abd34323ccc1d1ade9561ace95795e62"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    strategy :page_match
    regex(%r{href=.*?/owncloud-(\d+(?:\.\d+)*)\.pkg}i)
  end

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
