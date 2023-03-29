cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "9fbc6b1151c07ca2de63c2ff09f0220a8886d749538ab0649e180a6b06e9b86b",
         intel: "d562b4d9aad3b288929eb1604252761921e5ea8e57e1cb5a085661e6a664d97c"

  url "https://github.com/containers/podman-desktop/releases/download/v#{version}/podman-desktop-#{version}-#{arch}.dmg",
      verified: "github.com/containers/podman-desktop"
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
