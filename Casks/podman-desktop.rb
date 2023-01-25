cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "448cea9097a79da7f41b2ba64e4e5dac2dcf7b8d5fe34b86600d7555ed82ebdf",
         intel: "af34557f2b1400d3c66ef6b7ad7cc4ec6c1e7b2900a777023ff79b267f7c6100"

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
