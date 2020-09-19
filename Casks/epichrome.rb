cask "epichrome" do
  version "2.3.11"
  sha256 "8e8ff755ab672af001802bc6f5a490560aab2ac64b7d3e15f2fc52a31c1d4daf"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
