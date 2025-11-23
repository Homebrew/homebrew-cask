cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "25.0.0"
  sha256 arm:   "9d1a968f41709d8edd334295058b98ce7599eb0df23d1d356f7a60857518694b",
         intel: "5ab661fae44bca35641512fe2a17fc814ab9046bcb5eac0b8353932ad26cad31"

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
