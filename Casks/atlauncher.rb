cask "atlauncher" do
  version "3.4.27.0"
  sha256 "8c8024ef613ad3e5de4769bb1220fd7c1e4a859156a2d0b7a28777f5f0d0478b"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
