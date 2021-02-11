cask "scenebuilder" do
  version "15.0.1"
  sha256 "41cad631faf489d70c29368c5113312b9a4eb5d646a3b295aac266e7af863fb1"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name "Scene Builder"
  desc "Drag & drop GUI designer for JavaFX"
  homepage "https://gluonhq.com/products/scene-builder/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SceneBuilder-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "SceneBuilder.app"
end
