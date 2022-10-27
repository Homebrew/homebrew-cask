cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "7433dd0cd14943295d2023b6351713ae286248dbbf57809beb64ac4ef9733052",
         intel: "a1b67f2ea8409783b22aea380911aac982f26141ad47ea3192a8428e0a3f2e92"

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
