cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.5"
  sha256 arm:   "2a03ed394934ce69b09051f6fda5373c4c0e46eef4cfccf789708ba92f2a7545",
         intel: "11cc6d33d6d50483be0f3b0c10ea4a37090c01745d7f6670e30b493dcabbf2ad"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/vdhcoapp-#{version}-mac-#{arch}-installer.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "vdhcoapp-#{version}-mac-#{arch}-installer.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"

  zap rmdir: "~/dwhelper"
end
