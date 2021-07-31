cask "epichrome" do
  version "2.4.15"
  sha256 "c45a9397d96da5250e5c4640ed2bfef0c5d7e1ae16629042e72b406081949229"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
