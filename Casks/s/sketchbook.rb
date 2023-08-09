cask "sketchbook" do
  version "8.7.1,2019"
  sha256 "a96042dc95483cd6fac849a9f60a22980204ee4ee0a26b0804b0aa6ab23b842a"

  url "https://download.autodesk.com/us/support/files/sketchbook/sketchbook_#{version.csv.second}/sketchbook_v#{version.csv.first}_mac.dmg",
      verified: "download.autodesk.com/us/support/files/sketchbook/"
  name "Autodesk Sketchbook"
  desc "Draw, paint, & sketch application"
  homepage "https://www.sketchbook.com/"

  pkg "SketchBook_v#{version.csv.first}_mac.pkg"

  uninstall quit:    "com.autodesk.SketchBook",
            pkgutil: ".*SketchBook.*"

  zap trash: [
    "~/Library/Application Support/Autodesk/SketchBook",
    "~/Library/Caches/com.autodesk.SketchBook",
    "~/Library/Preferences/com.autodesk.SketchBook.plist",
  ]

  caveats do
    discontinued

    <<~EOS
      Sketchbook is now handled by Sketchbook, Inc. and Autodesk no longer provides downloads. The app appears to only be available through app stores at this point (see https://www.sketchbook.com/apps).
    EOS
  end
end
