cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.30.7"
  sha256 arm:   "99689844fc594ffbc8722483b2c3be5f3d27d6fa5c3678837e961ce031feae95",
         intel: "18be3ad9cc040bfbfc6bb9b8c200c6be698af769a49e927e9a40fde8708ec6c2"

  url "https://github.com/containers/podman-desktop/releases/download/v#{version}/podman-desktop-#{version}-#{arch}.dmg"
  name "Podman Desktop"
  desc "Browse, manage, inspect containers and images"
  homepage "https://podman-desktop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Podman Desktop.app"

  uninstall quit:  "io.podmandesktop.PodmanDesktop",
            trash: "~/Library/LaunchAgents/io.podman_desktop.PodmanDesktop.plist"

  zap trash: [
    "~/.local/share/containers/podman-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.podmandesktop.podmandesktop.sfl*",
    "~/Library/Application Support/Podman Desktop",
    "~/Library/Preferences/io.podmandesktop.PodmanDesktop.plist",
    "~/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState",
  ]
end
