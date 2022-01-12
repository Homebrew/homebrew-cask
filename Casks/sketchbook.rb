cask "sketchbook" do
  version "8.7.1,2019"
  sha256 "a96042dc95483cd6fac849a9f60a22980204ee4ee0a26b0804b0aa6ab23b842a"

  url "https://download.autodesk.com/us/support/files/sketchbook/sketchbook_#{version.csv.second}/sketchbook_v#{version.csv.first}_mac.dmg",
      verified: "https://download.autodesk.com/us/support/files/sketchbook"
  name "Autodesk Sketchbook"
  desc "Draw, paint, & sketch application"
  homepage "https://www.sketchbook.com/"

  livecheck do
    url "https://www.autodesk.com/products/sketchbook/free-download"
    strategy :page_match do |page|
      match = page.match(%r{sketchbook_(\d+)/sketchbook_v?(\d+(?:\.\d+)*)_mac\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "SketchBook_v#{version.before_comma}_mac.pkg"

  uninstall quit:    "com.autodesk.SketchBook",
            pkgutil: ".*SketchBook.*"

  zap trash: [
    "~/Library/Caches/com.autodesk.SketchBook",
    "~/Library/Preferences/com.autodesk.SketchBook.plist",
    "~/Library/Application Support/Autodesk/SketchBook",
  ]
end
