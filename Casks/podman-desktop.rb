cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "4ecf5d62021a571e29ebac196763ce075699c0b8695d1bbed161836513435c72",
         intel: "8f3651b3c7dd61da7a83311da26719cbab1258e6a682e3e1a6859d9e94dbd849"

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
  depends_on macos: ">= :big_sur"

  app "Podman Desktop.app"

  zap trash: "~/.local/share/containers/podman-desktop"
end
