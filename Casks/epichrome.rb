cask "epichrome" do
  version "2.3.19"
  sha256 "bf13852cf154990d1e3d7d8f89595b31103f1fcc09e87d91fece44758a98c67d"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
