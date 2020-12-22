cask "skychart" do
  version "4.2.1"
  sha256 "72670b4c3d4145a2f609197d62bb07351d2e7cdce36d889d0d0f9a002158aa47"

  url "https://downloads.sourceforge.net/skychart/skychart-#{version}-4073-x86_64-macosx.dmg",
      verified: "downloads.sourceforge.net/skychart/"
  appcast "https://sourceforge.net/projects/skychart/rss?path=/"
  name "Skychart"
  name "Cartes du Ciel"
  desc "Free software to draw sky charts"
  homepage "https://www.ap-i.net/skychart/"

  pkg "Install Skychart.pkg"

  uninstall pkgutil: "net.ap-i.pkg.skychart"
end
