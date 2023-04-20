cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "86a0be5278479e51a37ec7208c18c68a2fc994245bdfdf13ccf442bcd915ea79",
         intel: "fdd79fbdb9ca8277164551881b2c5394759ab4064189e22344a3b803fab3601b"

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
