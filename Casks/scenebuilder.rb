cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "19.0.0"
  sha256 arm:   "1a87e932bd93811968225653f69a7c89ee11efef02c3e3a45dfc819c99b44b37",
         intel: "6f2c9af8ae2473632ffeeaca576e1bf75ccfd8ab725ab2c905399d25f898aac7"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}-#{arch}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SceneBuilder-(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "SceneBuilder.app"
end
