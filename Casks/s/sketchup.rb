cask "sketchup" do
  version "2027.0.264.170"
  sha256 "3460cd38df7cf48af4b186f45b6bf3a9d1f23e3af5b3de554319ead46369f678"

  url "https://download.sketchup.com/SketchUp-#{version.dots_to_hyphens}.dmg"
  name "SketchUp"
  desc "3D modeling software used to create and manipulate 3D models"
  homepage "https://sketchup.trimble.com/en"

  livecheck do
    url "https://sketchup.trimble.com/sketchup/SketchUpPro-dmg"
    regex(/SketchUp[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  depends_on macos: :monterey

  suite "SketchUp #{version.major}"

  zap trash: [
    "~/Library/Application Scripts/com.sketchup.LayOut.#{version.major}.LayOutThumbnailExtension",
    "~/Library/Application Scripts/com.sketchup.SketchUp.#{version.major}.SketchUpThumbnailExtension",
    "~/Library/Application Support/SketchUp #{version.major}",
    "~/Library/Caches/com.sketchup.LayOut.#{version.major}",
    "~/Library/Caches/com.sketchup.SketchUp.#{version.major}",
    "~/Library/Caches/com.sketchup.StyleBuilder.#{version.major}",
    "~/Library/Containers/com.sketchup.LayOut.#{version.major}.LayOutThumbnailExtension",
    "~/Library/Containers/com.sketchup.SketchUp.#{version.major}.SketchUpThumbnailExtension",
    "~/Library/Preferences/com.sketchup.LayOut.#{version.major}.plist",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.major}.plist",
    "~/Library/Preferences/com.sketchup.StyleBuilder.#{version.major}.plist",
    "~/Library/Preferences/Trimble.SketchUp-Helper.(Renderer).plist",
  ]
end
