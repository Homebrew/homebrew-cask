cask "openshot-video-editor" do
  version "4.0.0"
  sha256 "bfad1a866265f05024ffee90e5a770d4e584424f2ee6952812c55fcd2133177a"

  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "openshot-video-editor@daily"
  depends_on :macos

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
