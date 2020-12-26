cask "sketchbook" do
  version "8.7.1"
  sha256 "a96042dc95483cd6fac849a9f60a22980204ee4ee0a26b0804b0aa6ab23b842a"

  url "https://update.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name "Autodesk Sketchbook"
  desc "Draw, paint, & sketch application"
  homepage "https://www.sketchbook.com/"

  livecheck do
    url "https://update.sketchbook.com/mac/latest"
    strategy :header_match
  end

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    "com.autodesk.SketchBook",
            pkgutil: ".*SketchBook.*"

  zap trash: [
    "~/Library/Caches/com.autodesk.SketchBook",
    "~/Library/Preferences/com.autodesk.SketchBook.plist",
    "~/Library/Application Support/Autodesk/SketchBook",
  ]
end
