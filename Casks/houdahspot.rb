cask "houdahspot" do
  version "6.0.3,555"
  sha256 "85ddeb49b658f32dc6ebdc8b9cf4985fd155007d48beeb50ccb83377b3ae8b67"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version.before_comma}.zip"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  livecheck do
    url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "HoudahSpot.app"
end
