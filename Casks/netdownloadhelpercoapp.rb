cask "netdownloadhelpercoapp" do
  version "1.5.0"
  sha256 "354b302206da8bda19a006237f3fd609bec79ccca6380ec994f0b9b482571f4b"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  appcast "https://github.com/mi-g/vdhcoapp/releases.atom"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"
end
