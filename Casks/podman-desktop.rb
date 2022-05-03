cask "podman-desktop" do
  version "0.0.2"

  if Hardware::CPU.intel?
    sha256 "f2bbf9efa47b168545800ea019841efba402c1e13015bc71164b54b87fe1a849"
  else
    sha256 "13edf34e547d1a1b522b8ebebc948765b7a43919ebb3b966e2483ac74ddeee77"
  end

  arch = Hardware::CPU.intel? ? "x64" : "arm64"
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

  zap trash: [
    "~/.local/share/containers/podman-desktop",
  ]
end
