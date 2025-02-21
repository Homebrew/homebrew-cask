cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.16.2"
  sha256 arm:   "747b73d55d6b522996db5b7c8b4a78fcf7ff39f049315ef1b161fed54d55783e",
         intel: "e319e7372dc99fec21d78d6e36592cc9dd504c948b7c55e6411e1e13527d2f86"

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
  depends_on macos: ">= :big_sur"

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
