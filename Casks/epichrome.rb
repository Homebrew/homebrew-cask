cask "epichrome" do
  version "2.4.10"
  sha256 "4c5b933449df6372df6c2f7eea9412bb9601d62d4b5f1d8cb1e09397a787a4cd"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
