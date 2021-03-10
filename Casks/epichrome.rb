cask "epichrome" do
  version "2.3.27"
  sha256 "af5a7970ddc0375c72679d22289794ed4355e59b654dcb83136def57732b3734"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
