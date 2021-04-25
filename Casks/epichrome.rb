cask "epichrome" do
  version "2.4.4"
  sha256 "a94b567cf188d9c0826b6021fe594c75b568c1644ea97455db94c6db58cf3a1e"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
