cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "de7ed245b22ddce6035e1fb7800c06281d61e0bf29ce1630c0a5f80d2e35b69e",
         intel: "17e5a7aa52f16f7dfd1044bd745cf04c1721dea10027e04ac52186fcf058173d"

  url "https://github.com/containers/podman-desktop/releases/download/v#{version}/podman-desktop-#{version}-#{arch}.dmg",
      verified: "github.com/containers/podman-desktop/"
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
