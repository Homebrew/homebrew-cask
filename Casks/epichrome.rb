cask "epichrome" do
  version "2.4.26"
  sha256 "690df70b5c8fc7104ad44965dfc509e61f5c2238638d793befdae19c1210a8d3"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
