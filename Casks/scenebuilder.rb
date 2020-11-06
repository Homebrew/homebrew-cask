cask "scenebuilder" do
  version "11.0.0"
  sha256 "0602d1cd7156fa0ff49cc4055e6aec020227df813449b2bc3782a3fddffb43bb"

  url "https://download2.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.pkg"
  appcast "https://gluonhq.com/products/scene-builder/#download"
  name "Scene Builder"
  homepage "https://gluonhq.com/products/scene-builder/"

  depends_on macos: ">= :high_sierra"

  pkg "SceneBuilder-#{version}.pkg"

  uninstall pkgutil: "com.gluonhq.scenebuilder"
end
