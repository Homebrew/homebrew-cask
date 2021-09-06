cask "atlauncher" do
  version "3.4.6.5"
  sha256 "85f0eac07873c1cd11e8c25597a27ca14cf0f0771309d56ced96be02ffbd6055"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
