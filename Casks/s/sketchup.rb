cask "sketchup" do
  version "2025.0.574.244"
  sha256 "a1966ae2adc77d82211798457cb1bddbdfe28ac1806fe3b32c43208a5c932438"

  url "https://download.sketchup.com/SketchUp-#{version.dots_to_hyphens}.dmg"
  name "SketchUp"
  desc "3D modeling software used to create and manipulate 3D models"
  homepage "https://www.sketchup.com/"

  livecheck do
    url "https://www.sketchup.com/download/all"
    strategy :page_match
    regex(/SketchUp-(\d+(?:-\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.scan(regex).map { |v| v.first.tr("-", ".") }
      next if match.blank?

      match
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
