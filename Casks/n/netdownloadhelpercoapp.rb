cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.7"
  sha256 arm:   "95a80d4c0372215159610042411cc2736ecfc83042699cba92d338aa67699567",
         intel: "6c67391b6918fcc6a999c70cff0fbaa370ed15747e2f0f345728c0ae3122b923"

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
