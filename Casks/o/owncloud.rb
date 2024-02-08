cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.1.13040"
  sha256 arm:   "49bd5a5a30c6af0c8fbf2acd180838761de6db303cea8cbf54706b208aa20b9c",
         intel: "99f6645678b1f6f7ca75a61c0bbeb2ca7412730bcde41ecfcac8e121afbe14ad"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}-#{arch}.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    regex(/href=.*?owncloud[._-]v?(\d+(?:\.\d+)+)[._-]x86[._-]64\.pkg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "ownCloud-#{version}-#{arch}.pkg"

  uninstall pkgutil: [
    "com.owncCloud.finderPlugin",
    "com.ownCloud.client",
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
