cask "scenebuilder" do
  version "17.0.0"
  sha256 "d62a2fd5e692c79229c2de37daa732a78e51df4db98eda8d0ca1144159d5df19"

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
