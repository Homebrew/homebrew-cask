cask "live-home-3d" do
  version "4.9.9"
  sha256 :no_check

  url "https://belightsoft.s3.amazonaws.com/LiveHome3DStd.dmg",
      verified: "belightsoft.s3.amazonaws.com/"
  name "Live Home 3D"
  desc "Home & floorplan designer & renderer"
  homepage "https://www.livehome3d.com/mac/live-home-3d"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_lh3d.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Live Home 3D.app"

  zap trash: [
    "~/Library/Application Scripts/com.belightsoft.LiveHome3D.ThumbnailProvider",
    "~/Library/Application Support/Live Home 3D",
    "~/Library/Caches/com.belightsoft.LiveHome3D",
    "~/Library/Containers/com.belightsoft.LiveHome3D.ThumbnailProvider",
    "~/Library/Preferences/com.belightsoft.LiveHome3D.plist",
    "~/Library/Saved Application State/com.belightsoft.LiveHome3D.savedState",
  ]
end
