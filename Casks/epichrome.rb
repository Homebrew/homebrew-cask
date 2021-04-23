cask "epichrome" do
  version "2.4.3"
  sha256 "352b34cca8d710026275577a8abd918361f4e6a48ec01ef2643a00f0e3280de4"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
