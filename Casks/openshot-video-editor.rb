cask "openshot-video-editor" do
  version "3.1.1"
  sha256 "65f5ec72f1be80b61a96da640bb08d8aa5d41d46cfbe12d0ea86f1a6ccfd4680"

  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "homebrew/cask-versions/openshot-video-editor-daily"
  depends_on macos: ">= :catalina"

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
