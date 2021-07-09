cask "netdownloadhelpercoapp" do
  version "1.6.3"
  sha256 "898f32f0cd329e4448b71df99e20a8339189ec263f6577b50f514f8b6fb45565"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"
end
