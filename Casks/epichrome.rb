cask "epichrome" do
  version "2.4.2"
  sha256 "6c2145110355c30be607dba605f009903d0a7ad7a67822611b5d756b8d492f09"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
