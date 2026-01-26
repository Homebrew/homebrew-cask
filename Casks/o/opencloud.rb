cask "opencloud" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.3"
  sha256 arm:   "4f1e4292b19c38cb346cbabacd22733a3ad4c37915fc0b6a1db7960a03687b00",
         intel: "51c3c2f80e963213803e3070f6de4d198a5b98acaaecc9430588a9003ee4e3a4"

  url "https://github.com/opencloud-eu/desktop/releases/download/v#{version}/OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"
  name "OpenCloud Desktop"
  desc "Desktop syncing client for OpenCloud"
  homepage "https://github.com/opencloud-eu/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

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
