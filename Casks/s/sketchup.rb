cask "sketchup" do
  version "2026.2.242.76"
  sha256 "3a89d6ea7a5eddbd97521bde884f528f2dd6348b6408b74651551fb89d27c344"

  url "https://download.sketchup.com/SketchUp-#{version.dots_to_hyphens}.dmg",
      verified: "download.sketchup.com/"
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
