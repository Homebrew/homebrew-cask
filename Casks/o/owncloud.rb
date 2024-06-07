cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.0.13987"
  sha256 arm:   "ce29f7e87822fdbe008cead9f4d7b9196dc525b90e3a103abbb9761081d34ead",
         intel: "f977fef118b5abc2ee6b5013e267198db00a2c42cd9a3fc0fa050f896e3b0e34"

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
