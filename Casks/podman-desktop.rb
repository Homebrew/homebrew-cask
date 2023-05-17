cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "a8a5a7cb1b68eeb00d88bf97023d35469fee574b0644fa0ccef459eec661294f",
         intel: "7469e73401376d526419ee4da130145fa24d74e2dbebfed60339a66ca1fff099"

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
