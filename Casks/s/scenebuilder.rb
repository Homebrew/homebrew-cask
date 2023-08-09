cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "20.0.0"
  sha256 arm:   "e7916542052acb1b0b4e861e1eb4fec041e439d88cd850c2865fd0a4ce5e8821",
         intel: "9c0c306127aa171b57686a47e2ce5a20d10b4f787970827c75ee9137ba4e1450"

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
