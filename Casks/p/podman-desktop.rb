cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "7a96ed0836144a8e2b66a761ca55805622ad6dd5fcd1aeb8d40f573915bbda0b",
         intel: "8d50f29f919f3ab148cb1c54f71ac4820b4b4ed5f7bdcadb066d33d9a8b2584c"

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
