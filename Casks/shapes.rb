cask "shapes" do
  version "4.9,4908"
  sha256 "9b48bf8bb1d224b8ee85ee3f0746f66aa436544eb4ed6d0ac6bfd5264bb4119c"

  url "https://shapesapp.com/dist/Shapes_#{version.before_comma}.zip"
  name "Shapes"
  homepage "https://shapesapp.com/"

  livecheck do
    url "https://shapesapp.com/appcast/shapes#{version.major}.rss"
    strategy :sparkle
  end

  app "Shapes.app"
end
