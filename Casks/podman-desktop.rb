cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "c5f06b332c614cd161e7fdcc5331452416db1944441c02756d6259e4d45999dc",
         intel: "dc7c00c329bd3a24d55b17bdaa7fa96465c4ac28a27dcf0170bd702b62cf2c56"

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
