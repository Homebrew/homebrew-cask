cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.26.2"
  sha256 arm:   "176e8a0eb45f582139b3fdfb7274c2a75bceb0499567b529a1bfb4a42278ea0b",
         intel: "df4716ec8079a6f4c36b6bbf05a419ed91dea750109a769b43721d0735404761"

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
