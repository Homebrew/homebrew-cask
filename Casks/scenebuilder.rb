cask "scenebuilder" do
  version "16.0.0"
  sha256 "7e360191d171c378a8da5dd44a8351e94e13b0994b91d177d8f71c2b7a9ab75c"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SceneBuilder-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "SceneBuilder.app"
end
