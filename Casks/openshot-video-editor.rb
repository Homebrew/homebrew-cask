cask "openshot-video-editor" do
  version "2.6.0"
  sha256 "bbf3dd98fc2445135c9ffb15bb4941c98bf8962e4c1ca1fde6383f6c7c9c72eb"

  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor"
  homepage "https://openshot.org/"

  app "OpenShot Video Editor.app"
end
