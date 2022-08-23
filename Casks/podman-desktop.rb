cask "podman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "351174f934485c370081e3bfbb551958d7a8eee030fd7e4bfc3f53de7de3022f",
         intel: "d736878c3eb40bfd92cc45fb873e08ca89e6d38c49e5fbeae78520f3ff4ad5ca"

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
