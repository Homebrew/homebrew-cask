cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "21.0.0"
  sha256 arm:   "61d9507f164dbcdcf6feefaf0f2f656d397eac446223319a870f8b003b2ab7da",
         intel: "970910e61278207e697810e5ef50de812e24390a6ba661b85ef5d92968181753"

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

  zap trash: [
    "~/.scenebuilder",
    "~/Library/Application Support/Scene Builder",
    "~/Library/Saved Application State/com.gluonhq.scenebuilder.savedState",
  ]
end
