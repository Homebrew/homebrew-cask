cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "23.0.0"
  sha256 arm:   "3f81fef65c579b669182a4b628e2a96850e04684bf20385818ad44569aab5ac9",
         intel: "dc296402136ef4a66bca6e221fef609fd38a14891e999c5e0f81888e26a6babe"

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
