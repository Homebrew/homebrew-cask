cask "opencloud" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "07f078e97bf689b4dc34b19349d05676f8007de1346943fb7a8de0c486ce903e",
         intel: "874ce2d3a05ddf6fc3f6fc53a95f85c1ca2592104a40d74df58516647fceded7"

  url "https://github.com/opencloud-eu/desktop/releases/download/v#{version}/OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"
  name "OpenCloud Desktop"
  desc "Desktop syncing client for OpenCloud"
  homepage "https://github.com/opencloud-eu/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"

  uninstall pkgutil: [
    "eu.opencloud.client",
    "eu.opencloud.desktop",
    "eu.opencloud.finderPlugin",
  ]

  zap trash: [
    "~/Library/Application Scripts/eu.opencloud.desktopclient.FinderSyncExt",
    "~/Library/Application Support/OpenCloud",
    "~/Library/Caches/eu.opencloud.desktopclient",
    "~/Library/Containers/eu.opencloud.desktopclient.FinderSyncExt",
    "~/Library/Group Containers/9B5WD74GWJ.eu.opencloud.desktopclient",
    "~/Library/Preferences/eu.opencloud.desktopclient.plist",
    "~/Library/Preferences/OpenCloud",
  ]
end
