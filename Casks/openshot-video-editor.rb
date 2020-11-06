cask "openshot-video-editor" do
  version "2.5.1"
  sha256 "cc17586bb7241545659220994c765ae89eb584f6be007069cba519cd4c1793a4"

  # github.com/OpenShot/openshot-qt/ was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast "https://github.com/OpenShot/openshot-qt/releases.atom"
  name "OpenShot Video Editor"
  homepage "https://openshot.org/"

  app "OpenShot Video Editor.app"
end
