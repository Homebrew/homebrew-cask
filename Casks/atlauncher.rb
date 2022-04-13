cask "atlauncher" do
  version "3.4.13.0"
  sha256 "5892313a1aca8fdf7ca084834b62b0c40176c86461476860191d657e5459a804"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
