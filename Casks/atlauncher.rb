cask "atlauncher" do
  version "3.4.20.2"
  sha256 "d88573752dcc40be64ae7f056d5df0d8431090c8a31f70f54fcd603f08fb0b83"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
