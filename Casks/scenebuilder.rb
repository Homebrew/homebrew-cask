cask "scenebuilder" do
  version "18.0.0"
  sha256 "280a1bf776e39e93d611276d67560b9c0e195c6011ca7c5fd34a2b961165c66b"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SceneBuilder-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "SceneBuilder.app"
end
