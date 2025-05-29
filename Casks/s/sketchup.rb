cask "sketchup" do
  version "2025.0.633.273"
  sha256 "d72611f3d149675c3bbc6d4463ea2c297d9a54258a4ebfd9938134ca3a5d0bf9"

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
