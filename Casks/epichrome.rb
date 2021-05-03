cask "epichrome" do
  version "2.4.5"
  sha256 "a596d415ba741083e54833b12d31ef4967f10eb49bf77dad2478fb1f8a1fc9d7"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
