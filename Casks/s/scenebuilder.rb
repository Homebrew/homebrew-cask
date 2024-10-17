cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "23.0.1"
  sha256 arm:   "591fb055748fff9613dc814cdd2e45ef5614246d614cb018ca4bc837461b311a",
         intel: "99d9427c5ba1ff0fc8ee10c412a8e121e42dbe915934f6cfbb749d87da67f947"

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
