cask "openshot-video-editor" do
  os macos: "dmg", linux: "AppImage"

  version "4.1.0"
  sha256 arm:          "985b2f163c443dd92f0e7ab030fa81fcfe36ca8b0c31f41f88d9a0468221a41c",
         intel:        "985b2f163c443dd92f0e7ab030fa81fcfe36ca8b0c31f41f88d9a0468221a41c",
         x86_64_linux: "43af897622628b6ee092d5cfc5b555d50d6253dd32c5562060c9759b041d7e4c"

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
