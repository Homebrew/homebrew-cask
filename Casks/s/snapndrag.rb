cask "snapndrag" do
  version "4.5.1"
  sha256 "5f46c1e003bf4adad52e3e201d81d6ad26b4eef481106f1ef3799a11ed078a5a"

  url "https://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  name "SnapNDrag"
  desc "Screen capture application"
  homepage "https://www.yellowmug.com/snapndrag/"

  livecheck do
    url "https://yellowmug.com/snapndrag/appcast-1014.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SnapNDrag.app"

  zap trash: [
    "~/Library/Application Support/com.yellowmug.SnapNDrag",
    "~/Library/Preferences/com.yellowmug.SnapNDrag.plist",
  ]

  caveats do
    requires_rosetta
  end
end
