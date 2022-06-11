cask "podman-desktop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.0.4"

  if Hardware::CPU.intel?
    sha256 "16599a7252992d3f9dbe097f0b147189afb791bca5698bbc8bef830fbe1e91f0"
  else
    sha256 "d78f4e5d2a213daf4288196f8970aa161dfe73f2c26ad4c7a3f9fa433591de4e"
  end

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
