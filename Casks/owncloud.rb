cask "owncloud" do
  version "3.2.1.10355"
  sha256 "37ecb6d3d7e6cd54563c020d39650e77303a6b242d052482bb1464d18a1dbd25"

  url "https://download.owncloud.com/desktop/ownCloud/stable/#{version}/mac/ownCloud-#{version}-x86_64.pkg"
  name "ownCloud"
  desc "Desktop syncing client for ownCloud"
  homepage "https://owncloud.com/"

  livecheck do
    url "https://owncloud.com/desktop-app/"
    regex(%r{href=.*?/owncloud[._-]v?(\d+(?:\.\d+)+)[._-]x86[._-]64\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "ownCloud-#{version}-x86_64.pkg"

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
