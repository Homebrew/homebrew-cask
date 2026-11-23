cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  sha256 arm:   "cbd4df518a100bb842f178803f5899e723043ac6a4853beb58ef1dfe09e204a0",
         intel: "69a4d8a994d8ab57bc060c2e66e0e40d9f56043ac55577f7face0fdc64158af8"

  on_arm do
    version "27.0.0"
  end
  on_intel do
    version "26.0.0"
  end

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}-#{arch}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    regex(/href=.*?SceneBuilder[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "SceneBuilder.app"

  zap trash: [
    "~/.scenebuilder",
    "~/Library/Application Support/Scene Builder",
    "~/Library/Saved Application State/com.gluonhq.scenebuilder.savedState",
  ]
end
