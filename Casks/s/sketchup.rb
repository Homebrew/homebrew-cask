cask "sketchup" do
  version "2026.1.257.82"
  sha256 "b8f17a07a72005bd02ce71d2e8289b147a22a892e09830fd05ed7f9051cf0f91"

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

  depends_on macos: ">= :monterey"

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
