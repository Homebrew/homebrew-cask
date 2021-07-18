cask "epichrome" do
  version "2.4.14"
  sha256 "e9bd040882498a5032c2cfce84d53fdfcf19737d6c522204290d9160afd1f529"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
