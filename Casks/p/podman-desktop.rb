cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.28.3"
  sha256 arm:   "4c460dec23e9b188cf352585adae56e0a0e97440e16592bf21dd6ddddb57ce6f",
         intel: "59d1c7b9a459f227f982271abc0019a3a8c9881963ee0a39cb4c68b41fd52415"

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
  depends_on macos: :monterey

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
