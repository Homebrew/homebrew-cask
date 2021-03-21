cask "epichrome" do
  version "2.4.0"
  sha256 "6390e08fe3ca4593f1d01cb79e34052ae68a667180cbfd9f2ae3639609ed02aa"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
