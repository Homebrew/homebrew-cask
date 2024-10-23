cask "sketchup" do
  version "2024.0.598.243"
  sha256 "bf070195914fdfa4b01d2c4a527f7bc0a0b2089e9f3f50ae4e22ec3dd2a1357f"

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
