cask "atlauncher" do
  version "3.4.24.2"
  sha256 "cfaf2c60f7f40f6e4545a89b645411c7665b7c4557815303a3a5d0ed8e4f5dcd"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
