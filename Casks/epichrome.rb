cask "epichrome" do
  version "2.4.8"
  sha256 "6df7c1e458848acbf54fce1b5ff78a03d13f6b8afc1ad65ecc166ff260a4bc12"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
