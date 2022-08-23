cask "scenebuilder" do
  arch arm: "-aarch64"

  version "18.0.0"
  sha256 arm:   "1dfcfd12ce4af94da53f6607c2f28e75bd6b1527b795404b21ae0b6b2f24e4ea",
         intel: "280a1bf776e39e93d611276d67560b9c0e195c6011ca7c5fd34a2b961165c66b"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}#{arch}.dmg"
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
