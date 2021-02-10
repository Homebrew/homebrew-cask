cask "astah-uml" do
  version "8.3.0,b9757d"
  sha256 "421e5281f0a652beda6a94ef1f4be9ce3945786e41bde7c70cf0839af2874df7"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  appcast "https://astah.net/download"
  name "Change Vision Astah UML"
  desc "Lightweight UML diagramming tool with mind mapping"
  homepage "https://astah.net/products/astah-uml/"

  pkg "astah uml ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astahuml.astahUML.pkg"
  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
