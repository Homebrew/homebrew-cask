cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "7.1.0.19041"
  sha256 arm:   "459d1ab3d18a5fc12cfcfe02cf3069e3b8db3ceea7a41d1173ee37497be02dda",
         intel: "756da460b27490d812a36b2a95c28ff78c7fa3b7b32bbac17c4044c140c5aaf9"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}-#{arch}.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    regex(/href=.*?owncloud[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  auto_updates true
  depends_on :macos

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
