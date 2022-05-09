cask "podman-desktop" do
  version "0.0.3"

  if Hardware::CPU.intel?
    sha256 "43a52fcc39ef210cf9f98f525a09fe11b8d9ca8746463d406fd72e5f627eb1f6"
  else
    sha256 "a79678e6f24aeb710f8d05d6d93fb5256b17922d5060c7e46c8950a7c32f4435"
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
