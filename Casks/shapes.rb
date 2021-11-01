cask "shapes" do
  version "5.0,5000"
  sha256 "c9ee28c078656fb178e3c386d827255a7f2e949f8fa474efa573f9f7d24f1ffd"

  url "https://shapesapp.com/dist/Shapes_#{version.before_comma}.zip"
  name "Shapes"
  desc "Diagramming app"
  homepage "https://shapesapp.com/"

  livecheck do
    url "https://shapesapp.com/appcast/shapes#{version.major}.rss"
    strategy :sparkle
  end

  app "Shapes.app"
end
