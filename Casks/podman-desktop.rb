cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "9066fe96de569362be13e59cbf4e1e84cf4cfb49ac6ee2d3c7196d57080ef74c",
         intel: "05e9b155be98638b193d87351dd5ac2575fbd322ff0a6b497197ca67cee7331f"

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
