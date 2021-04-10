cask "shapes" do
  version "4.9"
  sha256 "9b48bf8bb1d224b8ee85ee3f0746f66aa436544eb4ed6d0ac6bfd5264bb4119c"

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  name "Shapes"
  homepage "http://shapesapp.com/"

  livecheck do
    url "http://shapesapp.com/appcast/shapes#{version.major}.rss"
    strategy :page_match
    regex(%r{href=.*?/Shapes_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Shapes.app"
end
