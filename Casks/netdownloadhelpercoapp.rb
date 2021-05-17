cask "netdownloadhelpercoapp" do
  version "1.6.2"
  sha256 "d01cd8ac754900484097be045d262a4c4b912937fc673826487b15a26e256517"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"
end
