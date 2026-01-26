cask "sketchup" do
  version "2026.0.428.164"
  sha256 "eb2ed5fb18b9dcc63350057275ab14d4f9624a98996c4ce7f6f1299832fa2dd5"

  url "https://download.sketchup.com/SketchUp-#{version.dots_to_hyphens}.dmg"
  name "SketchUp"
  desc "3D modeling software used to create and manipulate 3D models"
  homepage "https://www.sketchup.com/"

  livecheck do
    url "https://www.sketchup.com/download/all"
    regex(/href=.*?SketchUp[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
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
