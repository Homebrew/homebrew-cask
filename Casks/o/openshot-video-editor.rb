cask "openshot-video-editor" do
  os macos: "dmg", linux: "AppImage"

  version "4.1.1"
  sha256 arm:          "ba2a8e333b743f7b4e5195fe66961b1708cd1b94bc1c0f9d6485343f2ab1d471",
         intel:        "ba2a8e333b743f7b4e5195fe66961b1708cd1b94bc1c0f9d6485343f2ab1d471",
         x86_64_linux: "662d0c3cec67ddc90df6a8b0c723c0aac0d3bddf0c3c467eff562e818bb8c72f"

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
