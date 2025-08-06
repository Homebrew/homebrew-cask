cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "24.0.1"
  sha256 arm:   "875ce938b04f3ab77dc5dc777f08400ee9448c285c7990b7d0cd7437787790b9",
         intel: "9b734c11ddb5c0bd644513883a37742e72da0c099381e1407eee98520bc31627"

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
