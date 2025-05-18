cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.19"

  on_mojave :or_older do
    sha256 "1d826c8456424445309dac74054f0d954dab2eb089c75ef217de0b08c32dd5c5"

    url "https://github.com/aclap-dev/vdhcoapp/releases/download/v#{version}/vdhcoapp-mac13-#{arch}-installer.pkg",
        verified: "github.com/aclap-dev/vdhcoapp/"

    pkg "vdhcoapp-mac13-#{arch}-installer.pkg"
  end
  on_catalina :or_newer do
    sha256 arm:   "be91d5896db29724389c79bc8ce2b1b257bf7516068755aa2a4027c87c82eb9b",
           intel: "3e4c513c368aa426d9713c857778996773014bcf1874c909c80cfb6ec96de50e"

    url "https://github.com/aclap-dev/vdhcoapp/releases/download/v#{version}/vdhcoapp-mac-#{arch}-installer.pkg",
        verified: "github.com/aclap-dev/vdhcoapp/"

    pkg "vdhcoapp-mac-#{arch}-installer.pkg"
  end

  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/w/CoApp-Installation"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "vdhcoapp-mac-#{arch}-installer.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"

  zap rmdir: "~/dwhelper"
end
