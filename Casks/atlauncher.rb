cask "atlauncher" do
  version "3.4.24.0"
  sha256 "0e2d8b07c2483b80f83dd1d0262cf69374836dcd020e71c8a0612d3c33346298"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
