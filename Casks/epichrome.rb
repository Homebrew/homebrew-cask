cask "epichrome" do
  version "2.4.18"
  sha256 "ae53f72a06194a30859c3bff630fc28fdb4a128255dc60e12a6ce09c4575ffb6"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
