cask "atlauncher" do
  version "3.4.21.0"
  sha256 "590ae42a73044495586848dee7e407622abbd692244969ed18c0b0f8d5edd17d"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
