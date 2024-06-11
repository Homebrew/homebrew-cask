cask "scenebuilder" do
  arch arm: "aarch64", intel: "amd64"

  version "22.0.0"
  sha256 arm:   "646a360427de54592bd95a7d3aa76dc5d8bc58f10f0201400bc0fecd66c08126",
         intel: "c23a7dcc3c1c4adba5fd6672f13bf7a53e7b3aa1d765f58bf09a9ac02fe75061"

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
