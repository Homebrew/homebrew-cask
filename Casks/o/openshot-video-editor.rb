cask "openshot-video-editor" do
  os macos: "dmg", linux: "AppImage"

  version "4.0.1"
  sha256 arm:          "32d5e55b447fd155f3f193ec36efe47e1f57f02a5f2090bdf3ef7b0bc7c8bcfd",
         intel:        "32d5e55b447fd155f3f193ec36efe47e1f57f02a5f2090bdf3ef7b0bc7c8bcfd",
         x86_64_linux: "cbeaaaf1de5afe8b3cdb55f50680e5d8f37ff0c2ea5052ddb012c01c9cca7a3f"

  on_macos do
    app "OpenShot Video Editor.app"

    zap trash: [
      "~/.openshot_qt",
      "~/Library/Application Support/openshot",
      "~/Library/Preferences/openshot-qt.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "OpenShot-v#{version}-x86_64.AppImage", target: "OpenShot.AppImage"

    zap trash: "~/.openshot_qt"
  end

  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.#{os}"
  name "OpenShot Video Editor"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "openshot-video-editor@daily"
end
