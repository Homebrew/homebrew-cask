cask "epichrome" do
  version "2.4.6"
  sha256 "fc0d3f3176006490955c8a9a3ab0599083d00b9e707fd0a6355e4c8d59e7a2b2"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
