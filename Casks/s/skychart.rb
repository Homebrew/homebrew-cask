cask "skychart" do
  version "4.2.1-4073"
  sha256 "72670b4c3d4145a2f609197d62bb07351d2e7cdce36d889d0d0f9a002158aa47"

  url "https://downloads.sourceforge.net/skychart/skychart-#{version}-x86_64-macosx.dmg",
      verified: "downloads.sourceforge.net/skychart/"
  name "SkyChart"
  name "Cartes du Ciel"
  desc "Draw sky charts"
  homepage "https://www.ap-i.net/skychart/"

  livecheck do
    url "https://sourceforge.net/projects/skychart/rss?path=/1-software/"
    regex(/skychart[._-]v?(\d+(?:.\d+)+)[._-]x86[._-]64[._-]macosx\.dmg/i)
    strategy :page_match
  end

  pkg "Install Skychart.pkg"

  uninstall pkgutil: "net.ap-i.pkg.skychart"

  zap trash: [
    "~/Library/Application Support/skychart",
    "~/Library/Preferences/net.ap-i.skychart.plist",
    "~/Library/Saved Application State/net.ap-i.skychart.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
