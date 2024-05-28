cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.10.3"
  sha256 arm:   "fa81a02b805df8145fec0f2f9a68d8c4a46df6c1a5684555785b34aa4fe95054",
         intel: "a662de4aba0ca75c82dc9551bb9c2afc5d4384c075ee0cd7e7759aaf6e8a4d13"

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
