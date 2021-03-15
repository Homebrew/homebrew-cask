cask "netdownloadhelpercoapp" do
  version "1.6.1"
  sha256 "1ce1f3d0055bf5a2aa6da8044be22b477a68d26b4dbbc96abaf7d95445115e48"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  appcast "https://github.com/mi-g/vdhcoapp/releases.atom"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"
end
