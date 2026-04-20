cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "26.0.0"
  sha256 arm:   "0197a797d548c569e3e5e26b2dfaaad15db3a6a214780af6ee837717333dff99",
         intel: "69a4d8a994d8ab57bc060c2e66e0e40d9f56043ac55577f7face0fdc64158af8"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}-#{arch}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SceneBuilder-(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "SceneBuilder.app"

  zap trash: [
    "~/.scenebuilder",
    "~/Library/Application Support/Scene Builder",
    "~/Library/Saved Application State/com.gluonhq.scenebuilder.savedState",
  ]
end
