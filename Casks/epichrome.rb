cask "epichrome" do
  version "2.4.16"
  sha256 "0034fe101768d423b4d5203d799dda8a49db226c7908582d63ede1a6fe9fe9c2"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
