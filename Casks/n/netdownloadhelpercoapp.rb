cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.19"
  sha256 arm:   "be91d5896db29724389c79bc8ce2b1b257bf7516068755aa2a4027c87c82eb9b",
         intel: "3e4c513c368aa426d9713c857778996773014bcf1874c909c80cfb6ec96de50e"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/vdhcoapp-mac-#{arch}-installer.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "vdhcoapp-mac-#{arch}-installer.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"

  zap rmdir: "~/dwhelper"
end
