cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "a9d839e2876afa5e0bc2fab028920a8c5543d18a8bc37201bc4789b8db32dbf0",
         intel: "577b7d10e8d112e9e1f41c7f14657af074b03985501e29fdd21d9b189ce22da3"

  url "https://github.com/containers/podman-desktop/releases/download/v#{version}/podman-desktop-#{version}-#{arch}.dmg",
      verified: "https://github.com/containers/podman-desktop"
  name "Podman Desktop"
  desc "Browse, manage, inspect containers and images"
  homepage "https://podman-desktop.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "podman"
  depends_on macos: ">= :catalina"

  app "Podman Desktop.app"

  zap trash: "~/.local/share/containers/podman-desktop"
end
