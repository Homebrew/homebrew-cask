cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.10.2"
  sha256 arm:   "241f63ca59992ccf304a7f799408add904d96d8ba00fc40ecf0b8280d3f54682",
         intel: "88618be397a663144f1943ac524c100c86f6fc69e4b2df81966d9e2845a3731b"

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
  depends_on macos: ">= :catalina"

  app "Podman Desktop.app"

  uninstall quit:   "io.podmandesktop.PodmanDesktop",
            delete: "/Applications/Podman Desktop.app",
            trash:  "~/Library/LaunchAgents/io.podman_desktop.PodmanDesktop.plist"

  zap trash: [
    "~/.local/share/containers/podman-desktop",
    "~/Library/Application Support/Podman Desktop",
    "~/Library/Preferences/io.podmandesktop.PodmanDesktop.plist",
    "~/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState",
  ]
end
