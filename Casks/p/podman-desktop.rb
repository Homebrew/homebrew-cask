cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.24.2"
  sha256 arm:   "0c042c1344438e4277394098af368d78386b3101e78aef834402439e094eeac1",
         intel: "ac3dd334423acb5868aac469f3d10f573f0ed4d6b7a5eda452edb2c6506aed91"

  url "https://github.com/containers/podman-desktop/releases/download/v#{version}/podman-desktop-#{version}-#{arch}.dmg",
      verified: "github.com/containers/podman-desktop/"
  name "Podman Desktop"
  desc "Browse, manage, inspect containers and images"
  homepage "https://podman-desktop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Podman Desktop.app"

  uninstall quit:  "io.podmandesktop.PodmanDesktop",
            trash: "~/Library/LaunchAgents/io.podman_desktop.PodmanDesktop.plist"

  zap trash: [
    "~/.local/share/containers/podman-desktop",
    "~/Library/Application Support/Podman Desktop",
    "~/Library/Preferences/io.podmandesktop.PodmanDesktop.plist",
    "~/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState",
  ]
end
