cask "snapndrag" do
  version "4.5.6"
  sha256 "70c798897eda2b45e13f9b31258c197bed3e43f9364de199e1b5707fb6091f5f"

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

  uninstall quit: "com.yellowmug.SnapNDrag"

  zap trash: [
    "~/Library/Application Support/com.yellowmug.SnapNDrag",
    "~/Library/Preferences/com.yellowmug.SnapNDrag.plist",
  ]
end
