cask "opencloud" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0-rc.1"
  sha256 arm:   "9b97142b7fa207cbb68e5a1926d9dafbd1375e06a5f2336b197f3fdb774a2626",
         intel: "95443b0ea69d40d5916965aa7e3155bd10d048598a942fd9e78c519c1e1cdb7d"

  url "https://github.com/opencloud-eu/desktop/releases/download/v#{version}/OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"
  name "OpenCloud Desktop"
  desc "Desktop syncing client for OpenCloud"
  homepage "https://github.com/opencloud-eu/desktop"

  livecheck do
    url "https://github.com/opencloud-eu/desktop/releases"
    strategy :github_releases
    regex(/^v?(\d+(?:\.\d+)+)$/i) # Only matches stable versions without suffixes
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
