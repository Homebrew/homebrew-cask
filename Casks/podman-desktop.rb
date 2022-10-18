cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "88feb86a628b09cb40b8515634fa5ac02e5a72203f1ab225c8ecc960268f1f28",
         intel: "0de48b2dc9b2b30e8b509f6152d134975f356498447881db1df0c7f666227a17"

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
