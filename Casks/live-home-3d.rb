cask "live-home-3d" do
  version "4.1.3"
  sha256 :no_check

  url "https://s3.amazonaws.com/belightsoft/LiveHome3DStd.dmg"
  name "live-home-3d"
  desc "Home & floorplan designer & renderer"
  homepage "https://www.livehome3d.com/mac/live-home-3d"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_lh3d.xml"
    strategy :sparkle
  end

  app "Live Home 3D.app"
end
