cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.1.14018"
  sha256 arm:   "03ef4d7c70aa526bddedefee06d0063f036ff78bbbcc5012f82c11919f5f12ab",
         intel: "9a7d1c727a3a760caf29ac4f91edd230d2afd4d06c135fd05f7896645652462e"

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
