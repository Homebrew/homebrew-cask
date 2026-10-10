cask "robbietilton-compositor" do
  version "1.4.9"
  sha256 "b77fd1ddc8eb46078536d8973105f2de97051bfbd90c01c9c10a974911e831ff"

  url "https://github.com/robbietilton/Compositor/releases/download/v#{version}/Compositor.dmg"
  name "Compositor"
  desc "Photoshop alternative"
  homepage "https://github.com/robbietilton/Compositor"

  conflicts_with cask: "compositor"
  depends_on macos: :tahoe

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Support/Compositor",
    "~/Library/Preferences/com.robbietilton.Compositor.plist",
  ]
end
