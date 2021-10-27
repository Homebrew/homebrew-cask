cask "owncloud" do
  version "2.9.1.5500"
  sha256 "02ed16dc4e5ad266ca2403fa1bca5627759938d6f77e7b0fb2fa13c89424fe21"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    regex(%r{href=.*?/owncloud[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
    "com.ownCloud.client",
    "com.owncCloud.finderPlugin",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.owncloud.desktopclient.FinderSyncExt",
    "~/Library/Application Support/ownCloud",
    "~/Library/Caches/com.owncloud.desktopclient",
    "~/Library/Containers/com.owncloud.desktopclient.FinderSyncExt",
    "~/Library/Group Containers/9B5WD74GWJ.com.owncloud.desktopclient",
    "~/Library/Preferences/com.owncloud.desktopclient.plist",
    "~/Library/Preferences/ownCloud",
  ]
end
