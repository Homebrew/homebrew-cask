cask "netdownloadhelpercoapp" do
  version "1.6.0"
  sha256 "697e3a6ca9964b187a167e35c628d7ca4c927b405d0f90ff41d7bbf6e61cf544"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  appcast "https://github.com/mi-g/vdhcoapp/releases.atom"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"
end
