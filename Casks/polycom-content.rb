cask "polycom-content" do
  version "1.3.4.73535"
  sha256 "71ef985df0463b26345ed1161abcfe67391810778d2c3c1f50f87406efbd20ce"

  url "https://downloads.polycom.com/video/content-app/PolycomContentApp_#{version.dots_to_underscores}.dmg"
  name "Polycom Content App"
  homepage "https://www.polycom.com/content-collaboration/content-sharing/content-app.html"

  livecheck do
    url "https://support.polycom.com/content/support/north-america/usa/en/support/video/polycom-content-app.html"
    strategy :page_match do |page|
      v = page[%r{href=.*?/PolycomContentApp_(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  pkg "PolycomContentApp.pkg"

  uninstall pkgutil: "com.polycom.PolycomPanoApp"
end
