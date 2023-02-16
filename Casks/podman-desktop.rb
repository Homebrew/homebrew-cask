cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "98e5c8e4bd6b474e7492ab188298315eeb867536dea2e602761178e98ae1317f",
         intel: "61c29f3ffdda9646837e2a3c9e0e1b77b4fbabee873ba81737144c126d6401cc"

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
