cask "snapndrag" do
  version "4.5.4"
  sha256 "ffcef31891184fadae977bcfaa2a33502188592b6bf250defebc9975e95ad2bd"

  url "https://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  name "SnapNDrag"
  desc "Screen capture application"
  homepage "https://www.yellowmug.com/snapndrag/"

  livecheck do
    url "https://yellowmug.com/snapndrag/appcast-1014.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "SnapNDrag.app"

  zap trash: [
    "~/Library/Application Support/com.yellowmug.SnapNDrag",
    "~/Library/Preferences/com.yellowmug.SnapNDrag.plist",
  ]
end
