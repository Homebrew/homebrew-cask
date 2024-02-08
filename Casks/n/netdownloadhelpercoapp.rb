cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.10"
  sha256 arm:   "fa38230277d9b15ff4f0b7ea404cb1addbe112ba4b870cdf7a198c7268da85e0",
         intel: "e24aa23b398bfbd3e5c727afab2022bea2e57b768346bd9816aaa362065feeb0"

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
