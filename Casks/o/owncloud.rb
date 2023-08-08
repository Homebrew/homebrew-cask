cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.0.11670"
  sha256 arm:   "21200087579cdc5b092f3eba3cb05cedcd07cd14e9e03c6064d48e33444b38c4",
         intel: "18c5b1e0404c3d9d88792fb9d63fa70b63d941089ee9744dd6461768e47e93e6"

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
