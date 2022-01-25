cask "openshot-video-editor" do
  version "2.6.1"
  sha256 "da40d4361810bf131cd06a1afe71e9a7a15918f2b154e1399db7306b2a3b72d3"

  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  conflicts_with cask: "homebrew/cask-versions/openshot-video-editor-daily"
  depends_on macos: ">= :catalina"

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
