cask "owncloud" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.1.17343"
  sha256 arm:   "ae63ccde858984f61b57004413149772809dd9b83c2c26bf872b3aa288a978f5",
         intel: "1a5056faee061577f716eed443deae7f01ea7041a57fe128b88211cbedae76fe"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}-#{arch}.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    regex(/href=.*?owncloud[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  auto_updates true

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
