cask "sketchbook" do
  version "8.7.1,2019"
  sha256 "a96042dc95483cd6fac849a9f60a22980204ee4ee0a26b0804b0aa6ab23b842a"

  url "https://download.autodesk.com/us/support/files/sketchbook/sketchbook_#{version.after_comma}/sketchbook_v#{version.before_comma}_mac.dmg",
      verified: "https://download.autodesk.com/us/support/files/sketchbook"
  name "Autodesk Sketchbook"
  desc "Draw, paint, & sketch application"
  homepage "https://www.sketchbook.com/"

  pkg "SketchBook_v#{version.before_comma}_mac.pkg"

  uninstall quit:    "com.autodesk.SketchBook",
            pkgutil: ".*SketchBook.*"

  zap trash: [
    "~/Library/Caches/com.autodesk.SketchBook",
    "~/Library/Preferences/com.autodesk.SketchBook.plist",
    "~/Library/Application Support/Autodesk/SketchBook",
  ]
end
