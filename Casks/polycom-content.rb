cask "polycom-content" do
  version "1.3.4.73535"
  sha256 "71ef985df0463b26345ed1161abcfe67391810778d2c3c1f50f87406efbd20ce"

  url "https://downloads.polycom.com/video/content-app/PolycomContentApp_#{version.dots_to_underscores}.dmg",
      verified: "downloads.polycom.com"
  name "Polycom Content App"
  desc "Content sharing app"
  homepage "https://www.poly.com/us/en/support/products/video-conferencing/accessories/content-app"

  livecheck do
    url :homepage
    regex(%r{(?:href|data-path)=.*?/PolycomContentApp[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  pkg "PolycomContentApp.pkg"

  uninstall pkgutil: "com.polycom.PolycomPanoApp"
end
