cask "polycom-content" do
  version "1.3.3.72974"
  sha256 "7f49aef95379c1b16e1499ec2d99953c7111aae6f9081fd061c60d75818961a7"

  url "https://downloads.polycom.com/video/content-app/PolycomContentApp_#{version.dots_to_underscores}.dmg"
  appcast "https://support.polycom.com/content/support/north-america/usa/en/support/video/polycom-content-app.html",
          must_contain: version.dots_to_underscores
  name "Polycom Content App"
  homepage "https://www.polycom.com/content-collaboration/content-sharing/content-app.html"

  pkg "PolycomContentApp.pkg"

  uninstall pkgutil: "com.polycom.PolycomPanoApp"
end
