cask "houdahspot" do
  version "6.1.8,699"
  sha256 "081e1a03f6f3d04839123146259661f7074eb8b088100a0048ffce791475a534"

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
