cask "epichrome" do
  version "2.4.25"
  sha256 "3ae2ec637de9dacf1af51e5937049e0466ddbb8988faa18f04de46e9784c6610"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
