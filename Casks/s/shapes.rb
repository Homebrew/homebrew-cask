cask "shapes" do
  version "5.0"
  sha256 "ee6c2946acbd481c260b9894756057f51aff4f11cf9d9904a0d2b3b8524adb95"

  url "https://shapesapp.com/dist/Shapes_#{version}.zip"
  name "Shapes"
  desc "Diagramming app"
  homepage "https://shapesapp.com/"

  livecheck do
    url "https://shapesapp.com/appcast/shapes#{version.major}.rss"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Shapes.app"

  zap trash: [
    "~/Library/Application Support/com.celestialteapot.Shapes5",
    "~/Library/Preferences/com.celestialteapot.Shapes5.plist",
  ]
end
