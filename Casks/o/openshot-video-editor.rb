cask "openshot-video-editor" do
  os macos: "dmg", linux: "AppImage"

  version "4.0.0"
  sha256 arm:          "bfad1a866265f05024ffee90e5a770d4e584424f2ee6952812c55fcd2133177a",
         intel:        "bfad1a866265f05024ffee90e5a770d4e584424f2ee6952812c55fcd2133177a",
         x86_64_linux: "277b27aae97080a1dae8831be8c6d2c576377292f559fb1b94675f6db24aa70f"

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
