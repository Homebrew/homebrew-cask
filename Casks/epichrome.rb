cask "epichrome" do
  version "2.4.7"
  sha256 "1672a38ab7d33132f1e1b70e9427376f52b20e4359d434e95bf3859ce60cfea1"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
