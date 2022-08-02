cask "podman-desktop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.0.5"

  if Hardware::CPU.intel?
    sha256 "5b30ceb773846d1014a112b52ff644d8df40c3419e3d9d066cce227ad248a8cf"
  else
    sha256 "eb0dba442229668ea15d9eedf6c730dc7b60d484debb0c761b625f5a4adc3195"
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
