cask "snapndrag" do
  version "4.3.3"
  sha256 "a8a68641fcf766c241a06ecefae549a3851000f471eee48b71fa45672c179452"

  url "https://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  name "SnapNDrag"
  desc "Screen capture application"
  homepage "https://www.yellowmug.com/snapndrag/"

  livecheck do
    url "https://yellowmug.com/snapndrag/appcast-1014.xml"
    strategy :sparkle
  end

  app "SnapNDrag.app"

  zap trash: [
    "~/Library/Application Support/com.yellowmug.SnapNDrag",
    "~/Library/Preferences/com.yellowmug.SnapNDrag.plist",
  ]
end
